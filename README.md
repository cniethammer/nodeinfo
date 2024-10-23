# nodeinfo tools

The nodeinfo script helps to collect a large set of system information outputting
it in XML format. Output saved in a file can be processed and displayed using the
nodeinfo.parser.

## Getting Started

### Prerequisites
The nodeinfo script requires
- bash (the bash_completion requires GNU bash-4.0)

The nodeinfo.parser requires
- python-3

### Installation
Just clone the directory and use the scripts. No additional steps required.

### Usage:
Run nodeinfo and store output in a file
```
  ./nodeinfo > nodeinfo.xml 
```
In a parallel environment running under a job scheduler (SLURM,PBS) the
nodeinfo script can collect information for all nodes of the job via
```
  ./nodeinfo recursive > nodeinfo.xml 
```
Be aware, that this runs nodeinfo via ssh on every node which can take
very long for a large number of nodes.


To obtain a list of information included in a xml output file run
```
./nodeinfo.parser nodeinfo.xml
```
To display the detailed information to one of the infos use
```
./nodeinfo.parser nodeinfo.xml <INFONAME>
```
In order to get help about all options of the nodeinfo.parser run
```
./nodeinfo.parser --help
```

## Legal Info and Contact
Copyright (c) 2015-2024 HLRS, University of Stuttgart.
This software is published under the terms of the BSD license.

Contact: Christoph Niethammer <niethammer@hlrs.de>

