#!/usr/local/bin/python

"""This script will take cvs conflict lines and apply the INPUT changes
(the repository version).

Requires Python 2.3 (cause we use IN on a string object)
"""

import fileinput

inSandbox = False
inRepo = False
outputList = []
inConflict = False


def process_line(myLine):
	global inSandbox
	global inRepo
	global outputList
	global inConflict
	
	if "<<<<<<<" in myLine:
		inSandbox = True
		inRepo = False
		inConflict = True
		return
		
	if "=======" in myLine:
		inRepo = True
		inSandbox = False
		return
	
	if ">>>>>>>" in myLine:
		inConflict = False	
		return
			
	if inSandbox or (not inConflict):
		print myLine[:-1] #line ending added automatically, we don't want an extra one. WD-rpw 8/6/03

			
	

for my_line in fileinput.input():
	process_line(my_line)
	
