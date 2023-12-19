from itertools import groupby
from operator import itemgetter
import sys
import os
def read_mapper_output(file, sep='\t'):
    for line in file:
        yield line.rstrip().split(sep)
        
def main(sep='\t'):
    n = int(os.environ["n"])
    data = sorted(read_mapper_output(sys.stdin,sep = sep), key=itemgetter(0))
    for key, group in groupby(data, itemgetter(0)):
        try:
            group_list = list(group)
            if len(group_list) > 1: 
                (i, j) = group_list[0][0].split(',')
                (x1, y1) = group_list[0][1].split(',')
                (x2, y2) = group_list[1][1].split(',')
                distance = (int(x1) - int(x2))**2 + (int(y1) - int(y2))**2
                print(f"{str(int(i) * n + int(j))}{sep}{str(distance)}")
        except ValueError:
            pass
if __name__ == "__main__":
    main()
    