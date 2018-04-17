#!/usr/bin/python

parsed = {}
with open('/proc/meminfo') as meminfo:
    for line in meminfo:
        id, data = line.strip().split()[:2]
        parsed[id[:-1]] = int(data)

gb_total = parsed['MemTotal']

gb_used = (parsed['MemTotal'] + parsed['Shmem'] - parsed['MemFree'] -
           parsed['Buffers'] - parsed['Cached'] - parsed['SReclaimable'])

#print('%.2f GB / %.2f GB' % (gb_used / 1048576.0, gb_total / 1048576.0))
print('%.2f GB' % (gb_used / 1048576.0))
