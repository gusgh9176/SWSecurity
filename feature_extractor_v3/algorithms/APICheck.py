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

def getAPICheck(dvm,vma):
	reload(sys)
	sys.setdefaultencoding('utf-8')

	_classes = vma.get_classes()
	global API
	api_class = []
	api_method = []
	fapi_method = []
#	regex = re.compile('\".*?\"')
#	regex2 = re.compile('L.*?\->')

	for c in _classes:
		if c.is_android_api():
			api_class.append(c)
		
		ms = c.get_methods()
		for m in ms:
			if m.is_android_api():
#				print(str(m))
				api_method.append(m)

	return api_method
