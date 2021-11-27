import matplotlib
import matplotlib.pyplot as plt
import numpy as np

def normalize(img):
    max_component = np.max(img)
    min_component = np.min(img)
    max_min_component = max_component - min_component
    return (img-min_component)/max_min_component

def show_frame(frame, prefix=None):
    #frame = normalize(frame)
    plt.figure(figsize=(10,10))
    plt.title(prefix, fontsize=10)
    plt.imshow(frame)

def show_vectors2(flow, dpi=150, downsampling=1):
    #plt.figure.set_dpi(200)
    plt.figure(dpi=dpi)
    plt.quiver(flow[..., 0][::downsampling], flow[..., 1][::downsampling])
    plt.show()
    
def show_vectors(flow, dpi=150, title=None):
    #plt.figure.set_dpi(200)
    plt.figure(dpi=dpi)
    plt.quiver(flow[..., 0][::-1], flow[..., 1])
    plt.title(title, fontsize=10)
    plt.show()
