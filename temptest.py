import tempfile


try:
    with tempfile.TemporaryFile() as tf:
        tf.write("testing testing testing\n".encode('utf-8'))
    print("Path 1: worked")
except FileNotFoundError as e:
    print("Path 1: ERROR")

try:
    with tempfile.TemporaryFile(dir="/vagrant") as tf:
        tf.write("testing testing testing\n".encode('utf-8'))
    print("Path 2: worked")
except FileNotFoundError as e:
    print("Path 2: ERROR")
