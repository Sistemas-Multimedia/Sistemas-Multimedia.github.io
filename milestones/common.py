import matplotlib
import matplotlib.pyplot as plt
import matplotlib.axes as ax
import cv2
import os
import numpy as np
import math

import image_3 as RGB_img
import image_1 as gray_img
import colored

def show(img, title):
    img = RGB_img.normalize(img)
    plt.figure(figsize=(10,10))
    plt.title(title, fontsize=20)
    plt.imshow(img)

def show_gray(img, title):
    img = gray_img.normalize(img)
    plt.figure(figsize=(10,10))
    plt.title(title, fontsize=20)
    plt.imshow(img, cmap='gray')

# Entropy of a sequence of symbols (pixels). This is a theoretical measure
# of the compression ratio of the sequence.
def entropy_in_bits_per_symbol(sequence_of_symbols):
    value, counts = np.unique(sequence_of_symbols, return_counts = True)
    probs = counts / len(sequence_of_symbols)
    n_classes = np.count_nonzero(probs)

    if n_classes <= 1:
        return 0

    entropy = 0.
    for i in probs:
        entropy -= i * math.log(i, 2)

    return entropy

# Number of bytes that a img "img" requires in disk.
def bytes_per_RGB_img(img, fn="img"):
    RGB_img.write(img, "/tmp/" + fn)
    length_in_bytes = os.path.getsize("/tmp/" + fn + "000.png")
    return length_in_bytes

# The same value, but in bits/pixel.
def bits_per_RGB_pixel(img, fn="img"):
    return 8*bytes_per_RGB_img(img, fn)/(img.shape[0]*img.shape[1])

# Specific version for grayscale images.
def bytes_per_gray_img(img, fn="img"):
    cv2.imwrite("/tmp/" + fn + "000.png", img)
    length_in_bytes = os.path.getsize("/tmp/" + fn + "000.png")
    print(colored.fore.GREEN + f"bytes_per_gray_img: /tmp/{fn}000.png", img.shape, img.dtype, length_in_bytes, colored.style.RESET)
    return length_in_bytes

# The same value, but in bits/pixel.
def bits_per_gray_pixel(img, fn="img"):
    #return 8*bytes_per_gray_img(img, fn)/(img.shape[0]*img.shape[1])
    return entropy_in_bits_per_symbol(img.flatten())

def compute_slopes(RD_points):
    extended_RD_points = [(0.0, 0.0, '', -1)] + RD_points
    counter = 0
    RD_slopes = [(9.0E9, RD_points[0])]
    points_iterator = iter(RD_points)
    next(points_iterator)
    for i in points_iterator:
        BPP = i[0] # Rate 
        delta_BPP = BPP - RD_points[counter][0]
        MSE = i[1] # Distortion
        delta_MSE = MSE - RD_points[counter][1] 
        if delta_BPP > 0:
            slope = abs(delta_MSE/delta_BPP)
        else:
            slope = 0
        component = i[2]
        q_step = i[3]
        print((slope, i), delta_MSE, delta_BPP)
        RD_slopes.append((slope, i))
        counter += 1
    return RD_slopes
