import numpy as np

A = np.random.randint(1,2**16,200)
B = np.random.randint(1,2**16,200)
operations = ["00","01","10","11"]

with open("TRACEFILE.txt", "w") as tracefile:
    for i in range(len(A)):
        for op in operations:
            a = bin(A[i])[2:]
            b = bin(B[i])[2:]
            a = "0"*(16 - len(a)) + a
            b = "0"*(16 - len(b)) + b
            z = "0"
            c = "0"
            p_out = ""
            if (op=="00"):
                out = bin(A[i] + B[i])[2:]
                if (len(out) < 16):
                    out = "0"*(16 - len(out)) + out
                p_out = out[-16:]
                c = "1" if (len(out) > 16) else "0"
                z = "1" if (out == "0000000000000000") else "0"
            elif (op == "01"):
                if (A[i] < B[i]):
                    continue
                out = bin(A[i] - B[i])[2:]
                if (len(out) < 16):
                    out = "0"*(16 - len(out)) + out
                p_out = out[-16:]
                c = "1"
                z = "1" if (out == "0000000000000000") else "0"
            elif (op == "10"):
                
                for i in range(16):
                    if (a[i] == "1" and b[i] == "1"):
                        p_out += "0"
                    else:
                        p_out += "1"
                out1 = bin(A[i] + B[i])[2:]
                if (len(out1) < 16):
                    out1 = "0"*(16 - len(out1)) + out1
                c = "1" if (len(out) > 16) else "0"
                z = "1" if (out == "0000000000000000") else "0"
            else :
                continue

            tracefile.write(a + b + op + " " + p_out + z + c + " " + "1"*18 + "\n")
