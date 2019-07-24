# pyseal

## Microsoft SEAL For Python

Microsoft **SEAL** is an easy-to-use open-source ([MIT licensed](https://github.com/microsoft/SEAL/blob/master/LICENSE)) homomorphic encryption library developed by the Cryptography Research group at Microsoft. **pybind11** is a lightweight header-only library that exposes C++ types in Python and vice versa, mainly to create Python bindings of existing C++ code. We, **pyseal** use both of the above to make the homomorphic encryption works in Python.



## Contents

* [Build](https://github.com/Huelse/pyseal#build)
  * [SEAL](https://github.com/Huelse/pyseal#seal)
  * [pyseal](https://github.com/Huelse/pyseal#pyseal)
* [Tests](https://github.com/Huelse/pyseal#tests)
* [About](https://github.com/Huelse/pyseal#about)
* [Contributors](https://github.com/Huelse/pyseal)



## Build

* ### Environment

  Linux: Ubuntu 18.04 or Debian 9

  CMake (>= 3.10), GNU G++ (>= 6.0) or Clang++ (>= 5.0)

  `apt-get update && apt-get install g++ make git python3 python3-pip`

* ### SEAL

  ```shell
  cd SEAL/native/src
  cmake .
  make
  ```

* ### pyseal

  * CMake

    ```
    cd pyseal
    mkdir build
    cd build
    cmake ..
    make
    ```

  * Setuptools

    ```
    pip3 install --upgrade pip
    pip3 install setuptools
    pip3 install -r requirements.txt
  python3 setup.py build_ext -i
    ```

  * Others

    * If you clone a new SEAL lib from the Github, do not forget add a set_scale function in `seal/ciphertext.h` line 632, like this:
  
      ```c++
      /**
      Set the scale.
      */
      inline void set_scale(double scale)
      {
      	scale_ = scale;
    }
      ```

    * The CMake or setuptools will build a dynamic Link Library in project folder, named like `seal.cpython-36m-x86_64-linux-gnu.so`.
  
    * The path is very important, please check it before you do anything.



## Tests

`cd tests`

`python3 [example_name].py`

* The `.so` file need in the folder.



## Getting Started

| C++               | Python           | Description                                                  | Progress |
| ----------------- | ---------------- | ------------------------------------------------------------ | -------- |
| 1_bfv_basics.cpp  | 1_bfv_basics.py  | Encrypted modular arithmetic using the BFV scheme            | Finished |
| 2_encoders.cpp    | 2_encoders.py    | Encoding more complex data into Microsoft SEAL plaintext objects | Finished |
| 3_levels.cpp      | 3_levels.py      | Introduces the concept of levels; prerequisite for using the CKKS scheme | Finished |
| 4_ckks_basics.cpp | 4_ckks_basics.py | Encrypted real number arithmetic using the CKKS scheme       | Finished |
| 5_rotation.cpp    | 5_rotation.py    | Performing cyclic rotations on encrypted vectors in the BFV and CKKS schemes | Finished |
| 6_performance.cpp | 6_performance.py | Performance tests for Microsoft SEAL                         | Building |



## About

This is project is still testing now.

If any errors occur, new an [issue](https://github.com/Huelse/pyseal/issues) please.

If you have interest in this, come and join us.

Email: [huelse@oini.top](mailto:huelse@oini.top?subject=Github-pyseal-Issues&cc=5956877@qq.com)



## Contributors
* 指导老师：陈智罡
