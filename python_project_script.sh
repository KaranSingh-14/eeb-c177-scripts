#!/usr/bin/env python



#importing my data set
import numpy as np
import pandas as pd
tmp_data = pd.read_csv('Karan_Dataset.csv')
data = tmp_data.to_numpy()

#making a function that extracts out columns based on the number I input
# then appending the output to a list
def col_list_print(num):
    assert num >= 0, "Column num must be not negative"
    Species = (data[:, [num]]).tolist()
    print(Species)

#real alba (species name) data from col 6
col_list_print(6)

#real spart (species name abbreviated) data from column 8
col_list_print(8)

# plotting species occurence data based on column input
def allplots(num):
    assert num >= 0, "Column number must be positive"
    import matplotlib.pyplot as plt
    Species = (data[:, [num]]).tolist()
    empty_list = []
    for sublist in Species:
        for item in sublist:
            empty_list.append(item)
    Species = empty_list
    y = Species
    N = len( y )
    x = range( N )
    width = 1/1.5
    plt.bar( x, y, width, color="blue" )
    plt.show()

#data for Real_Alba species occurences in all environments
allplots(6)

#data for Real_Spart species occurences in all environments
allplots(8)

#getting a species count based on column input
def col_count_val(col):
    assert isinstance(col, str) == True, "Please input column name correctly"
    coldata = tmp_data[col].tolist()
    counts = dict()
    for ii in coldata:
        counts[ii] = counts.get(ii, 0) + 1
    return counts

# for the species columns this function is counting the number 
# of occurences for each species in the different environments
print(col_count_val("species"))





