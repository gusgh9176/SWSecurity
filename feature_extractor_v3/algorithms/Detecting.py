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

# return True -> malware
# return False -> benign
malware_Permission = ['CHANGE_NETWORK_STATE', 'UNINSTALL_SHORTCUT', 'WRITE_APN_SETTINGS', 'ACCESS_COARSE_UPDATES', 'DEVICE_POWER', 'PROCESS_OUTGOING_CALLS', 'INSTALL_SHORTCUT', 'CAMERA, WRITE_OWNER_DATA', 'REORDER_TASKS', 'WRITE_SETTINGS', 'DELETE_PACKAGES', 'ACCESS_GPS', 'READ_SETTINGS', 'CHECK_LICENSE', 'BROADCAST_PACKAGE_REMOVED', 'GET_PACKAGE_SIZE', 'INSTALL_PACKAGES', 'ACCESS_LOCATION', 'READ_SETTINGS', 'WRITE_SETTINGS', 'PERMISSION_NAME', 'READ_OWNER_DATA', 'FLASHLIGHT', 'DELETE_CACHE_FILES', 'CLEAR_APP_CACHE', 'MOUNT_UNMOUNT_FILESYSTEMS', 'RESTART_PACKAGES']
def classify(Permission_final):
    for Pm in Permission_final:
        for mal_pm in malware_Permission:
            a = str(Pm).find(mal_pm)
            if(a != -1):
                print("This is Malware!!!!!!!!!!!!!!1")
                return True
    print("This is benign~~~~~~~~~~~~~~~")
    return False


    
