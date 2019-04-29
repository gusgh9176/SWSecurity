#!/usr/bin/python2
#-*- coding: utf-8 -*-

from __future__ import division
#from importlib import reload
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
import argparse
from androguard import session
from androguard.misc import clean_file_name
from androguard.core import androconf
from androguard.core.bytecode import method2dot, method2format
from androguard.core.bytecodes import apk
from androguard.core.bytecodes import dvm 
from androguard.decompiler import decompiler
import androguard
import androguard.misc
from algorithms.Smali import getSmali
from algorithms.APICheck import getAPICheck
import os
import time

class DetectionManager(object):
	def __init__(self,args,fname,dvm,vma,temp_d):
		self.args = args
		self.filename = fname
		self.DetectionResult = 0
		self.Permission = []
		self.APICheck = []

		if args.All:
			args.Smali = True
			args.APICheck = True

		if args.Smali:
			self.Permission = getSmali(dvm, vma, self.filename)
		if args.APICheck:
			self.APICheck = getAPICheck(dvm, vma)

	def doSaveAll(self,rname):
		f = open(rname,'ab')
		f.write(str(self.filename)+',')
		for pm in self.Permission:
			f.write(str(pm)+',')
#		f.write(str(self.APICheck)+',')
#		f.write(str(self.DetectionResult)+',')
		f.close()

def doAnalysis(fname):
    vm = None
    vmx = None
#    print("doAnalysis")
    if fname.endswith(".apk"):
        _,vm,vmx = androguard.misc.AnalyzeAPK(fname)
    elif fname.endswith(".dex"):
        vm,vmx = androguard.misc.AnalyzeDex(fname)
    else:
        print("Not supported item")
        sys.exit(1)
    return vm,vmx

def doDetection(args):
	dirname = args.dirname
	if not os.path.isdir(dirname):
		print("That directory does not exist")
#	print(dirname)
	for root, dirs, files in os.walk(dirname):
		if len(files) < 1:
			print("That directory not include apk files")
		for f in files:
			try:
				start_time = time.time()
				target_path = []
				target_path = os.path.join(root, f)
#				print(target_path)
				fname = target_path
				print(fname)
				# get Analyzed data
				#	getSmali(fname)
				dvm2,vma = doAnalysis(fname)
				temp_a = apk.APK(fname)
				temp_d = dvm.DalvikVMFormat(temp_a.get_dex())
				mgr = DetectionManager(args,fname,dvm2,vma,temp_d)
				mgr.doSaveAll('result/res.csv')
				execution_time = time.time() - start_time
				print("executuion_time: ",execution_time)
				f = open('result/res.csv','ab')
				f.write('\n')
			except Exception as e:
				print("[-] " + str(e))
				continue
		#   	mgr.doReadAll('result/res.csv')

def main():
    # Argument Parsing
    parser = argparse.ArgumentParser(description='Obfuscation Detector', usage='%(prog)s [options] [.apk|.dex]')
    # TODO - metrics here :)
    parser.add_argument('-All', action='store_true', help='Count All Metric')
    parser.add_argument('-Smali', action='store_true', help='Count Smali')
    parser.add_argument('-APICheck', action='store_true', help='Check API')
    parser.add_argument('dirname', nargs='?', help='target directory of .apk file')

    args = parser.parse_args()
    if len(sys.argv) < 2 or args.dirname is None:
        parser.print_help()
        sys.exit(1)

    doDetection(args)

if __name__ == '__main__':
	main()
