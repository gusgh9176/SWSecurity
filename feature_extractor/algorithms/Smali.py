#!/usr/bin/python2
import sys
import argparse
from androguard import session
from androguard.misc import clean_file_name
from androguard.core import androconf
from androguard.core.bytecode import method2dot, method2format
from androguard.core.bytecodes import dvm
from androguard.decompiler import decompiler
import androguard
import androguard.misc
import json
import subprocess, os
import re
import operator

ParamStringMethod = 0
mx = 0
target_length = 0
nativeResult = {}
package_name = ''
permission_list = []

def checkPermission(manifest):
	global permission_list
	permission = []
	for _line in manifest.split("=\""):
		if "\"/>" in _line:
			tmp_perm = _line.replace("\"/>","")
			permission = tmp_perm.replace("\n","")
			permission_list.append(permission)

def checkPackageName(manifest):
	global package_name
	tmp_manifest = []
#	print(manifest)
	for _line in manifest.split(" "):
		if "package=" in _line:
			for tmp_p in _line.split("="):
				if "package" != tmp_p:
					tmp_pkg = re.findall(r"\".*?\"", tmp_p)
					package_name = str(tmp_pkg).replace("\"","")

def getSmali(dvm, vma, fname):
		global nativeResult
		reload(sys)
		sys.setdefaultencoding('utf-8')
		smali_path_list = []
		dirname = './tmp_smali'
#   	print(fname)
		if os.path.isdir(dirname):
			os.system("rm -r ./tmp_smali")
		subprocess.call(["java", "-jar", "./algorithms/apktool.jar", "d", fname, "-o", "./tmp_smali/"])

		for root, dirs, files in os.walk("./tmp_smali"):
			for f in files:
				mani_path = []
				mani_path = os.path.join(root, f)
#				print(mani_path)
				if mani_path == './tmp_smali/AndroidManifest.xml':
					smfd = open(mani_path, "rt")
					methodData = ''
					while True:
						methodName = ''
						line = smfd.readline()
#						print(line)
						if "package=" in line:
							checkPackageName(line)
						if "<uses-permission android:name=" in line:
							checkPermission(line)
						methodData += line
#						while "</manifest>" not in line:
#							line = smfd.readline()
#							methodData += line

						methodName = ''
						methodData = ''

						if not line:
							break
		print("HERE here\n")
		print(permission_list)

		return permission_list
