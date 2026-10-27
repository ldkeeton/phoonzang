; auto-generated
__zdseg_00b4:

    db 'PC INTERNAL SPEAKER', 0

__zdseg_00c8:

    db 'AD LIB BOARD       ', 0

__zdseg_00dc:

    db 'COVOX SOUNDMASTER  ', 0

__zdseg_00f0:

    db 'COVOX VOICEMASTER  ', 0

__zdseg_0104:

    db 'SOUND BLASTER      ', 0

__zdseg_0118:

    db 'ROLAND LAPC-1/MT-32', 0

__zdseg_012c:

    db 'COVOX SMII         ', 0

__zdseg_0140:

    db 'NONE               ', 0

    dw dseg_0158                               ; 0x3c34
    dw dseg_015c                               ; 0x3c36
__zdseg_0158:
    db 0x4e, 0x4f, 0x20, 0x00
__zdseg_015c:
    db 0x59, 0x45, 0x53, 0x00
    dw dseg_016a                               ; 0x3c40
    dw dseg_0181                               ; 0x3c42
    dw dseg_0198                               ; 0x3c44
    dw dseg_01af                               ; 0x3c46
    dw dseg_01c6                               ; 0x3c48
__zdseg_016a:

    db 'Floppy 5.25L (360k)   ', 0

__zdseg_0181:

    db 'Floppy 5.25H (1.2Meg) ', 0

__zdseg_0198:

    db 'Floppy 3.5L  (720k)   ', 0

__zdseg_01af:

    db 'Floppy 3.5H  (1.44Meg)', 0

__zdseg_01c6:

    db 'Hard (Fixed) Drive    ', 0
    times 4 db 0
    db 0x01, 0x00, 0x03, 0x00, 0x03, 0x00, 0x04, 0x00, 0x06, 0x00, 0x06, 0x00, 0x07, 0x00, 0x09, 0x00
    db 0x0a, 0x00, 0x0b, 0x00, 0x0c, 0x00, 0x0c, 0x00, 0x0e, 0x00, 0x0e, 0x00, 0x0f, 0x00, 0x01, 0x00
    db 0x02, 0x00, 0x02, 0x00, 0x04, 0x00, 0x05, 0x00, 0x05, 0x00, 0x07, 0x00, 0x08, 0x00, 0x08, 0x00
    db 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0d, 0x00, 0x0d, 0x00, 0x0f, 0x00, 0x10, 0x00, 0x10, 0x00
    db 0x00, 0x00, 0x01, 0x00, 0x02
    times 7 db 0
    db 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x06, 0x00, 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0b, 0x00
    db 0x0c, 0x00, 0x0c, 0x00, 0x0c, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x06, 0x00, 0x06, 0x00
    db 0x06, 0x00, 0x09, 0x00, 0x09, 0x00, 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0c, 0x00, 0x0e, 0x00
    db 0x0e, 0x00, 0x0e, 0x00, 0x0f, 0x00, 0x10
    times 5 db 0
    db 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x04, 0x00
    db 0x04, 0x00, 0x04
    times 9 db 0
    db 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00
    db 0x01, 0x00, 0x03, 0x00, 0x05, 0x00, 0x07, 0x00, 0x0a, 0x00, 0x01, 0x00, 0x05, 0x00, 0x0b
    times 5 db 0
    db 0x01, 0x00

    dw __zdseg_08c1 - __zdseg_start            ; 0x3d8b
    dw __zdseg_08ce - __zdseg_start            ; 0x3d8d
    dw __zdseg_08d0 - __zdseg_start            ; 0x3d8f
    dw __zdseg_08d2 - __zdseg_start            ; 0x3d91
    db 0x01, 0x00
    dw __zdseg_08d4 - __zdseg_start            ; 0x3d95
    dw __zdseg_08de - __zdseg_start            ; 0x3d97
    dw __zdseg_08e0 - __zdseg_start            ; 0x3d99
    dw __zdseg_08e2 - __zdseg_start            ; 0x3d9b
    db 0x01, 0x00
    dw __zdseg_08e4 - __zdseg_start            ; 0x3d9f
    dw __zdseg_08ee - __zdseg_start            ; 0x3da1
    dw __zdseg_08f0 - __zdseg_start            ; 0x3da3
    dw __zdseg_08f2 - __zdseg_start            ; 0x3da5
    db 0x01, 0x00
    dw __zdseg_08f4 - __zdseg_start            ; 0x3da9
    dw __zdseg_08fe - __zdseg_start            ; 0x3dab
    dw __zdseg_0900 - __zdseg_start            ; 0x3dad
    dw __zdseg_0902 - __zdseg_start            ; 0x3daf
    db 0x01, 0x00
    dw __zdseg_0904 - __zdseg_start            ; 0x3db3
    dw __zdseg_090e - __zdseg_start            ; 0x3db5
    dw __zdseg_0910 - __zdseg_start            ; 0x3db7
    dw __zdseg_0912 - __zdseg_start            ; 0x3db9
    db 0x01, 0x00
    dw __zdseg_0914 - __zdseg_start            ; 0x3dbd
    dw __zdseg_091e - __zdseg_start            ; 0x3dbf
    dw __zdseg_0921 - __zdseg_start            ; 0x3dc1
    dw __zdseg_0923 - __zdseg_start            ; 0x3dc3
    db 0x01, 0x00
    dw __zdseg_0925 - __zdseg_start            ; 0x3dc7
    dw __zdseg_092f - __zdseg_start            ; 0x3dc9
    dw __zdseg_0931 - __zdseg_start            ; 0x3dcb
    dw __zdseg_093a - __zdseg_start            ; 0x3dcd
    db 0x01, 0x00
    dw __zdseg_093d - __zdseg_start            ; 0x3dd1
    dw __zdseg_0947 - __zdseg_start            ; 0x3dd3
    dw __zdseg_0949 - __zdseg_start            ; 0x3dd5
    dw __zdseg_0952 - __zdseg_start            ; 0x3dd7
    db 0x01, 0x00
    dw __zdseg_0955 - __zdseg_start            ; 0x3ddb
    dw __zdseg_095f - __zdseg_start            ; 0x3ddd
    dw __zdseg_0961 - __zdseg_start            ; 0x3ddf
    dw __zdseg_096a - __zdseg_start            ; 0x3de1
    db 0x01, 0x00
    dw __zdseg_096d - __zdseg_start            ; 0x3de5
    dw __zdseg_0977 - __zdseg_start            ; 0x3de7
    dw __zdseg_0979 - __zdseg_start            ; 0x3de9
    dw __zdseg_0982 - __zdseg_start            ; 0x3deb
    db 0x01, 0x00
    dw __zdseg_0985 - __zdseg_start            ; 0x3def
    dw __zdseg_098f - __zdseg_start            ; 0x3df1
    dw __zdseg_0991 - __zdseg_start            ; 0x3df3
    dw __zdseg_099a - __zdseg_start            ; 0x3df5
    db 0x01, 0x00
    dw __zdseg_099d - __zdseg_start            ; 0x3df9
    dw __zdseg_09a7 - __zdseg_start            ; 0x3dfb
    dw __zdseg_09a9 - __zdseg_start            ; 0x3dfd
    dw __zdseg_09b2 - __zdseg_start            ; 0x3dff
    db 0x01, 0x00
    dw __zdseg_09b5 - __zdseg_start            ; 0x3e03
    dw __zdseg_09bf - __zdseg_start            ; 0x3e05
    dw __zdseg_09c1 - __zdseg_start            ; 0x3e07
    dw __zdseg_09ca - __zdseg_start            ; 0x3e09
    db 0x02, 0x00
    dw __zdseg_09cd - __zdseg_start            ; 0x3e0d
    dw __zdseg_09da - __zdseg_start            ; 0x3e0f
    dw __zdseg_09dc - __zdseg_start            ; 0x3e11
    dw __zdseg_09de - __zdseg_start            ; 0x3e13
    db 0x02, 0x00
    dw __zdseg_09e0 - __zdseg_start            ; 0x3e17
    dw __zdseg_09e8 - __zdseg_start            ; 0x3e19
    dw __zdseg_09ea - __zdseg_start            ; 0x3e1b
    dw __zdseg_09ec - __zdseg_start            ; 0x3e1d
    db 0x02, 0x00
    dw __zdseg_09ee - __zdseg_start            ; 0x3e21
    dw __zdseg_09f9 - __zdseg_start            ; 0x3e23
    dw __zdseg_09fb - __zdseg_start            ; 0x3e25
    dw __zdseg_09fd - __zdseg_start            ; 0x3e27
    db 0x02, 0x00
    dw __zdseg_09ff - __zdseg_start            ; 0x3e2b
    dw __zdseg_0a08 - __zdseg_start            ; 0x3e2d
    dw __zdseg_0a0a - __zdseg_start            ; 0x3e2f
    dw __zdseg_0a0c - __zdseg_start            ; 0x3e31
    db 0x02, 0x00
    dw __zdseg_0a0e - __zdseg_start            ; 0x3e35
    dw __zdseg_0a19 - __zdseg_start            ; 0x3e37
    dw __zdseg_0a1b - __zdseg_start            ; 0x3e39
    dw __zdseg_0a1d - __zdseg_start            ; 0x3e3b
    db 0x02, 0x00
    dw __zdseg_0a1f - __zdseg_start            ; 0x3e3f
    dw __zdseg_0a27 - __zdseg_start            ; 0x3e41
    dw __zdseg_0a2a - __zdseg_start            ; 0x3e43
    dw __zdseg_0a2c - __zdseg_start            ; 0x3e45
    db 0x02, 0x00
    dw __zdseg_0a2e - __zdseg_start            ; 0x3e49
    dw __zdseg_0a3a - __zdseg_start            ; 0x3e4b
    dw __zdseg_0a3c - __zdseg_start            ; 0x3e4d
    dw __zdseg_0a3e - __zdseg_start            ; 0x3e4f
    db 0x02, 0x00
    dw __zdseg_0a40 - __zdseg_start            ; 0x3e53
    dw __zdseg_0a4c - __zdseg_start            ; 0x3e55
    dw __zdseg_0a4e - __zdseg_start            ; 0x3e57
    dw __zdseg_0a50 - __zdseg_start            ; 0x3e59
    db 0x03, 0x00
    dw __zdseg_0a52 - __zdseg_start            ; 0x3e5d
    dw __zdseg_0a5a - __zdseg_start            ; 0x3e5f
    dw __zdseg_0a5c - __zdseg_start            ; 0x3e61
    dw __zdseg_0a5e - __zdseg_start            ; 0x3e63
    db 0x03, 0x00
    dw __zdseg_0a60 - __zdseg_start            ; 0x3e67
    dw __zdseg_0a6b - __zdseg_start            ; 0x3e69
    dw __zdseg_0a6d - __zdseg_start            ; 0x3e6b
    dw __zdseg_0a6f - __zdseg_start            ; 0x3e6d
    db 0x03, 0x00
    dw __zdseg_0a71 - __zdseg_start            ; 0x3e71
    dw __zdseg_0a7c - __zdseg_start            ; 0x3e73
    dw __zdseg_0a7e - __zdseg_start            ; 0x3e75
    dw __zdseg_0a80 - __zdseg_start            ; 0x3e77
    db 0x03, 0x00
    dw __zdseg_0a82 - __zdseg_start            ; 0x3e7b
    dw __zdseg_0a8d - __zdseg_start            ; 0x3e7d
    dw __zdseg_0a8f - __zdseg_start            ; 0x3e7f
    dw __zdseg_0a91 - __zdseg_start            ; 0x3e81
    db 0x03, 0x00
    dw __zdseg_0a93 - __zdseg_start            ; 0x3e85
    dw __zdseg_0a9e - __zdseg_start            ; 0x3e87
    dw __zdseg_0aa0 - __zdseg_start            ; 0x3e89
    dw __zdseg_0aa2 - __zdseg_start            ; 0x3e8b
    db 0x03, 0x00
    dw __zdseg_0aa4 - __zdseg_start            ; 0x3e8f
    dw __zdseg_0aaf - __zdseg_start            ; 0x3e91
    dw __zdseg_0ab1 - __zdseg_start            ; 0x3e93
    dw __zdseg_0ab3 - __zdseg_start            ; 0x3e95
    db 0x03, 0x00
    dw __zdseg_0ab5 - __zdseg_start            ; 0x3e99
    dw __zdseg_0ac0 - __zdseg_start            ; 0x3e9b
    dw __zdseg_0ac2 - __zdseg_start            ; 0x3e9d
    dw __zdseg_0ac4 - __zdseg_start            ; 0x3e9f
    db 0x03, 0x00
    dw __zdseg_0ac6 - __zdseg_start            ; 0x3ea3
    dw __zdseg_0ad1 - __zdseg_start            ; 0x3ea5
    dw __zdseg_0ad3 - __zdseg_start            ; 0x3ea7
    dw __zdseg_0ad5 - __zdseg_start            ; 0x3ea9
    db 0x03, 0x00
    dw __zdseg_0ad7 - __zdseg_start            ; 0x3ead
    dw __zdseg_0ae2 - __zdseg_start            ; 0x3eaf
    dw __zdseg_0ae4 - __zdseg_start            ; 0x3eb1
    dw __zdseg_0ae6 - __zdseg_start            ; 0x3eb3
    db 0x03, 0x00
    dw __zdseg_0ae8 - __zdseg_start            ; 0x3eb7
    dw __zdseg_0af5 - __zdseg_start            ; 0x3eb9
    dw __zdseg_0af7 - __zdseg_start            ; 0x3ebb
    dw __zdseg_0af9 - __zdseg_start            ; 0x3ebd
    db 0x03, 0x00
    dw __zdseg_0afb - __zdseg_start            ; 0x3ec1
    dw __zdseg_0b08 - __zdseg_start            ; 0x3ec3
    dw __zdseg_0b0a - __zdseg_start            ; 0x3ec5
    dw __zdseg_0b0c - __zdseg_start            ; 0x3ec7
    db 0x03, 0x00
    dw __zdseg_0b0e - __zdseg_start            ; 0x3ecb
    dw __zdseg_0b1b - __zdseg_start            ; 0x3ecd
    dw __zdseg_0b1d - __zdseg_start            ; 0x3ecf
    dw __zdseg_0b1f - __zdseg_start            ; 0x3ed1
    db 0x03, 0x00
    dw __zdseg_0b21 - __zdseg_start            ; 0x3ed5
    dw __zdseg_0b2e - __zdseg_start            ; 0x3ed7
    dw __zdseg_0b30 - __zdseg_start            ; 0x3ed9
    dw __zdseg_0b32 - __zdseg_start            ; 0x3edb
    db 0x04, 0x00
    dw __zdseg_0b34 - __zdseg_start            ; 0x3edf
    dw __zdseg_0b3e - __zdseg_start            ; 0x3ee1
    dw __zdseg_0b47 - __zdseg_start            ; 0x3ee3
    dw __zdseg_0b50 - __zdseg_start            ; 0x3ee5
    db 0x04, 0x00
    dw __zdseg_0b53 - __zdseg_start            ; 0x3ee9
    dw __zdseg_0b5d - __zdseg_start            ; 0x3eeb
    dw __zdseg_0b5f - __zdseg_start            ; 0x3eed
    dw __zdseg_0b61 - __zdseg_start            ; 0x3eef
    db 0x04, 0x00
    dw __zdseg_0b63 - __zdseg_start            ; 0x3ef3
    dw __zdseg_0b6d - __zdseg_start            ; 0x3ef5
    dw __zdseg_0b6f - __zdseg_start            ; 0x3ef7
    dw __zdseg_0b71 - __zdseg_start            ; 0x3ef9
    db 0x04, 0x00
    dw __zdseg_0b73 - __zdseg_start            ; 0x3efd
    dw __zdseg_0b7d - __zdseg_start            ; 0x3eff
    dw __zdseg_0b7f - __zdseg_start            ; 0x3f01
    dw __zdseg_0b81 - __zdseg_start            ; 0x3f03
    db 0x04, 0x00
    dw __zdseg_0b83 - __zdseg_start            ; 0x3f07
    dw __zdseg_0b8d - __zdseg_start            ; 0x3f09
    dw __zdseg_0b8f - __zdseg_start            ; 0x3f0b
    dw __zdseg_0b91 - __zdseg_start            ; 0x3f0d
    db 0x04, 0x00
    dw __zdseg_0b93 - __zdseg_start            ; 0x3f11
    dw __zdseg_0b9d - __zdseg_start            ; 0x3f13
    dw __zdseg_0b9f - __zdseg_start            ; 0x3f15
    dw __zdseg_0ba1 - __zdseg_start            ; 0x3f17
    db 0x04, 0x00
    dw __zdseg_0ba3 - __zdseg_start            ; 0x3f1b
    dw __zdseg_0bad - __zdseg_start            ; 0x3f1d
    dw __zdseg_0baf - __zdseg_start            ; 0x3f1f
    dw __zdseg_0bb1 - __zdseg_start            ; 0x3f21
    db 0x04, 0x00
    dw __zdseg_0bb3 - __zdseg_start            ; 0x3f25
    dw __zdseg_0bbd - __zdseg_start            ; 0x3f27
    dw __zdseg_0bbf - __zdseg_start            ; 0x3f29
    dw __zdseg_0bc1 - __zdseg_start            ; 0x3f2b
    db 0x04, 0x00
    dw __zdseg_0bc3 - __zdseg_start            ; 0x3f2f
    dw __zdseg_0bcd - __zdseg_start            ; 0x3f31
    dw __zdseg_0bcf - __zdseg_start            ; 0x3f33
    dw __zdseg_0bd1 - __zdseg_start            ; 0x3f35
    db 0x04, 0x00
    dw __zdseg_0bd3 - __zdseg_start            ; 0x3f39
    dw __zdseg_0bdd - __zdseg_start            ; 0x3f3b
    dw __zdseg_0be1 - __zdseg_start            ; 0x3f3d
    dw __zdseg_0be5 - __zdseg_start            ; 0x3f3f
    db 0x04, 0x00
    dw __zdseg_0be7 - __zdseg_start            ; 0x3f43
    dw __zdseg_0bf1 - __zdseg_start            ; 0x3f45
    dw __zdseg_0bf3 - __zdseg_start            ; 0x3f47
    dw __zdseg_0bf5 - __zdseg_start            ; 0x3f49
    db 0x04, 0x00
    dw __zdseg_0bf7 - __zdseg_start            ; 0x3f4d
    dw __zdseg_0c01 - __zdseg_start            ; 0x3f4f
    dw __zdseg_0c03 - __zdseg_start            ; 0x3f51
    dw __zdseg_0c05 - __zdseg_start            ; 0x3f53
    db 0x04, 0x00
    dw __zdseg_0c07 - __zdseg_start            ; 0x3f57
    dw __zdseg_0c11 - __zdseg_start            ; 0x3f59
    dw __zdseg_0c15 - __zdseg_start            ; 0x3f5b
    dw __zdseg_0c19 - __zdseg_start            ; 0x3f5d
    db 0x04, 0x00
    dw __zdseg_0c1b - __zdseg_start            ; 0x3f61
    dw __zdseg_0c25 - __zdseg_start            ; 0x3f63
    dw __zdseg_0c28 - __zdseg_start            ; 0x3f65
    dw __zdseg_0c2b - __zdseg_start            ; 0x3f67
    db 0x04, 0x00
    dw __zdseg_0c2e - __zdseg_start            ; 0x3f6b
    dw __zdseg_0c38 - __zdseg_start            ; 0x3f6d
    dw __zdseg_0c3c - __zdseg_start            ; 0x3f6f
    dw __zdseg_0c40 - __zdseg_start            ; 0x3f71
    db 0x04, 0x00
    dw __zdseg_0c42 - __zdseg_start            ; 0x3f75
    dw __zdseg_0c4c - __zdseg_start            ; 0x3f77
    dw __zdseg_0c4e - __zdseg_start            ; 0x3f79
    dw __zdseg_0c50 - __zdseg_start            ; 0x3f7b
    db 0x04, 0x00
    dw __zdseg_0c52 - __zdseg_start            ; 0x3f7f
    dw __zdseg_0c5c - __zdseg_start            ; 0x3f81
    dw __zdseg_0c5f - __zdseg_start            ; 0x3f83
    dw __zdseg_0c62 - __zdseg_start            ; 0x3f85
    db 0x04, 0x00
    dw __zdseg_0c64 - __zdseg_start            ; 0x3f89
    dw __zdseg_0c6e - __zdseg_start            ; 0x3f8b
    dw __zdseg_0c72 - __zdseg_start            ; 0x3f8d
    dw __zdseg_0c76 - __zdseg_start            ; 0x3f8f
    db 0x04, 0x00
    dw __zdseg_0c79 - __zdseg_start            ; 0x3f93
    dw __zdseg_0c83 - __zdseg_start            ; 0x3f95
    dw __zdseg_0c87 - __zdseg_start            ; 0x3f97
    dw __zdseg_0c8b - __zdseg_start            ; 0x3f99
    db 0x04, 0x00
    dw __zdseg_0c8e - __zdseg_start            ; 0x3f9d
    dw __zdseg_0c98 - __zdseg_start            ; 0x3f9f
    dw __zdseg_0c9e - __zdseg_start            ; 0x3fa1
    dw __zdseg_0ca4 - __zdseg_start            ; 0x3fa3
    db 0x04, 0x00
    dw __zdseg_0ca7 - __zdseg_start            ; 0x3fa7
    dw __zdseg_0cb1 - __zdseg_start            ; 0x3fa9
    dw __zdseg_0cb4 - __zdseg_start            ; 0x3fab
    dw __zdseg_0cb7 - __zdseg_start            ; 0x3fad
    db 0x04, 0x00
    dw __zdseg_0cb9 - __zdseg_start            ; 0x3fb1
    dw __zdseg_0cc3 - __zdseg_start            ; 0x3fb3
    dw __zdseg_0cc6 - __zdseg_start            ; 0x3fb5
    dw __zdseg_0cc9 - __zdseg_start            ; 0x3fb7
    db 0x04, 0x00
    dw __zdseg_0ccc - __zdseg_start            ; 0x3fbb
    dw __zdseg_0cd6 - __zdseg_start            ; 0x3fbd
    dw __zdseg_0cd9 - __zdseg_start            ; 0x3fbf
    dw __zdseg_0cdc - __zdseg_start            ; 0x3fc1
    db 0x04, 0x00
    dw __zdseg_0cde - __zdseg_start            ; 0x3fc5
    dw __zdseg_0ce8 - __zdseg_start            ; 0x3fc7
    dw __zdseg_0ceb - __zdseg_start            ; 0x3fc9
    dw __zdseg_0cee - __zdseg_start            ; 0x3fcb
    db 0x04, 0x00
    dw __zdseg_0cf0 - __zdseg_start            ; 0x3fcf
    dw __zdseg_0cfa - __zdseg_start            ; 0x3fd1
    dw __zdseg_0cfd - __zdseg_start            ; 0x3fd3
    dw __zdseg_0d00 - __zdseg_start            ; 0x3fd5
    db 0x04, 0x00
    dw __zdseg_0d02 - __zdseg_start            ; 0x3fd9
    dw __zdseg_0d0c - __zdseg_start            ; 0x3fdb
    dw __zdseg_0d10 - __zdseg_start            ; 0x3fdd
    dw __zdseg_0d14 - __zdseg_start            ; 0x3fdf
    db 0x04, 0x00
    dw __zdseg_0d17 - __zdseg_start            ; 0x3fe3
    dw __zdseg_0d21 - __zdseg_start            ; 0x3fe5
    dw __zdseg_0d27 - __zdseg_start            ; 0x3fe7
    dw __zdseg_0d2d - __zdseg_start            ; 0x3fe9
    db 0x04, 0x00
    dw __zdseg_0d30 - __zdseg_start            ; 0x3fed
    dw __zdseg_0d3a - __zdseg_start            ; 0x3fef
    dw __zdseg_0d3c - __zdseg_start            ; 0x3ff1
    dw __zdseg_0d3e - __zdseg_start            ; 0x3ff3
    db 0x04, 0x00
    dw __zdseg_0d40 - __zdseg_start            ; 0x3ff7
    dw __zdseg_0d4a - __zdseg_start            ; 0x3ff9
    dw __zdseg_0d4d - __zdseg_start            ; 0x3ffb
    dw __zdseg_0d50 - __zdseg_start            ; 0x3ffd
    db 0x05, 0x00
    dw __zdseg_0d53 - __zdseg_start            ; 0x4001
    dw __zdseg_0d5b - __zdseg_start            ; 0x4003
    dw __zdseg_0d5d - __zdseg_start            ; 0x4005
    dw __zdseg_0d5f - __zdseg_start            ; 0x4007
    db 0x05, 0x00
    dw __zdseg_0d61 - __zdseg_start            ; 0x400b
    dw __zdseg_0d6a - __zdseg_start            ; 0x400d
    dw __zdseg_0d6c - __zdseg_start            ; 0x400f
    dw __zdseg_0d6e - __zdseg_start            ; 0x4011
    db 0x05, 0x00
    dw __zdseg_0d70 - __zdseg_start            ; 0x4015
    dw __zdseg_0d7b - __zdseg_start            ; 0x4017
    dw __zdseg_0d7d - __zdseg_start            ; 0x4019
    dw __zdseg_0d7f - __zdseg_start            ; 0x401b
    db 0x05, 0x00
    dw __zdseg_0d81 - __zdseg_start            ; 0x401f
    dw __zdseg_0d8c - __zdseg_start            ; 0x4021
    dw __zdseg_0d8e - __zdseg_start            ; 0x4023
    dw __zdseg_0d90 - __zdseg_start            ; 0x4025
    db 0x05, 0x00
    dw __zdseg_0d92 - __zdseg_start            ; 0x4029
    dw __zdseg_0d9d - __zdseg_start            ; 0x402b
    dw __zdseg_0d9f - __zdseg_start            ; 0x402d
    dw __zdseg_0da1 - __zdseg_start            ; 0x402f
    db 0x05, 0x00
    dw __zdseg_0da3 - __zdseg_start            ; 0x4033
    dw __zdseg_0dae - __zdseg_start            ; 0x4035
    dw __zdseg_0db0 - __zdseg_start            ; 0x4037
    dw __zdseg_0db2 - __zdseg_start            ; 0x4039
    db 0x05, 0x00
    dw __zdseg_0db4 - __zdseg_start            ; 0x403d
    dw __zdseg_0dbf - __zdseg_start            ; 0x403f
    dw __zdseg_0dc1 - __zdseg_start            ; 0x4041
    dw __zdseg_0dc3 - __zdseg_start            ; 0x4043
    db 0x05, 0x00
    dw __zdseg_0dc5 - __zdseg_start            ; 0x4047
    dw __zdseg_0dd0 - __zdseg_start            ; 0x4049
    dw __zdseg_0dd2 - __zdseg_start            ; 0x404b
    dw __zdseg_0dd4 - __zdseg_start            ; 0x404d
    db 0x05, 0x00
    dw __zdseg_0dd6 - __zdseg_start            ; 0x4051
    dw __zdseg_0de1 - __zdseg_start            ; 0x4053
    dw __zdseg_0de3 - __zdseg_start            ; 0x4055
    dw __zdseg_0de5 - __zdseg_start            ; 0x4057
    db 0x05, 0x00
    dw __zdseg_0de7 - __zdseg_start            ; 0x405b
    dw __zdseg_0df2 - __zdseg_start            ; 0x405d
    dw __zdseg_0df4 - __zdseg_start            ; 0x405f
    dw __zdseg_0df6 - __zdseg_start            ; 0x4061
    db 0x05, 0x00
    dw __zdseg_0df8 - __zdseg_start            ; 0x4065
    dw __zdseg_0e05 - __zdseg_start            ; 0x4067
    dw __zdseg_0e07 - __zdseg_start            ; 0x4069
    dw __zdseg_0e09 - __zdseg_start            ; 0x406b
    db 0x05, 0x00
    dw __zdseg_0e0b - __zdseg_start            ; 0x406f
    dw __zdseg_0e18 - __zdseg_start            ; 0x4071
    dw __zdseg_0e1a - __zdseg_start            ; 0x4073
    dw __zdseg_0e1c - __zdseg_start            ; 0x4075
    db 0x05, 0x00
    dw __zdseg_0e1e - __zdseg_start            ; 0x4079
    dw __zdseg_0e2b - __zdseg_start            ; 0x407b
    dw __zdseg_0e2d - __zdseg_start            ; 0x407d
    dw __zdseg_0e2f - __zdseg_start            ; 0x407f
    db 0x05, 0x00
    dw __zdseg_0e31 - __zdseg_start            ; 0x4083
    dw __zdseg_0e3e - __zdseg_start            ; 0x4085
    dw __zdseg_0e40 - __zdseg_start            ; 0x4087
    dw __zdseg_0e42 - __zdseg_start            ; 0x4089
    db 0x06, 0x00
    dw __zdseg_0e44 - __zdseg_start            ; 0x408d
    dw __zdseg_0e4e - __zdseg_start            ; 0x408f
    dw __zdseg_0e51 - __zdseg_start            ; 0x4091
    dw __zdseg_0e54 - __zdseg_start            ; 0x4093
    db 0x06, 0x00
    dw __zdseg_0e57 - __zdseg_start            ; 0x4097
    dw __zdseg_0e61 - __zdseg_start            ; 0x4099
    dw __zdseg_0e65 - __zdseg_start            ; 0x409b
    dw __zdseg_0e69 - __zdseg_start            ; 0x409d
    db 0x06, 0x00
    dw __zdseg_0e6c - __zdseg_start            ; 0x40a1
    dw __zdseg_0e76 - __zdseg_start            ; 0x40a3
    dw __zdseg_0e7a - __zdseg_start            ; 0x40a5
    dw __zdseg_0e7e - __zdseg_start            ; 0x40a7
    db 0x06, 0x00
    dw __zdseg_0e81 - __zdseg_start            ; 0x40ab
    dw __zdseg_0e8b - __zdseg_start            ; 0x40ad
    dw __zdseg_0e8d - __zdseg_start            ; 0x40af
    dw __zdseg_0e8f - __zdseg_start            ; 0x40b1
    db 0x06, 0x00
    dw __zdseg_0e91 - __zdseg_start            ; 0x40b5
    dw __zdseg_0e9b - __zdseg_start            ; 0x40b7
    dw __zdseg_0e9f - __zdseg_start            ; 0x40b9
    dw __zdseg_0ea3 - __zdseg_start            ; 0x40bb
    db 0x06, 0x00
    dw __zdseg_0ea6 - __zdseg_start            ; 0x40bf
    dw __zdseg_0eb0 - __zdseg_start            ; 0x40c1
    dw __zdseg_0eb2 - __zdseg_start            ; 0x40c3
    dw __zdseg_0eb4 - __zdseg_start            ; 0x40c5
    db 0x06, 0x00
    dw __zdseg_0eb6 - __zdseg_start            ; 0x40c9
    dw __zdseg_0ec0 - __zdseg_start            ; 0x40cb
    dw __zdseg_0ec4 - __zdseg_start            ; 0x40cd
    dw __zdseg_0ec8 - __zdseg_start            ; 0x40cf
    db 0x06, 0x00
    dw __zdseg_0eca - __zdseg_start            ; 0x40d3
    dw __zdseg_0ed4 - __zdseg_start            ; 0x40d5
    dw __zdseg_0ed6 - __zdseg_start            ; 0x40d7
    dw __zdseg_0ed8 - __zdseg_start            ; 0x40d9
    db 0x06, 0x00
    dw __zdseg_0eda - __zdseg_start            ; 0x40dd
    dw __zdseg_0ee4 - __zdseg_start            ; 0x40df
    dw __zdseg_0ee7 - __zdseg_start            ; 0x40e1
    dw __zdseg_0eea - __zdseg_start            ; 0x40e3
    db 0x06, 0x00
    dw __zdseg_0eec - __zdseg_start            ; 0x40e7
    dw __zdseg_0ef6 - __zdseg_start            ; 0x40e9
    dw __zdseg_0ef8 - __zdseg_start            ; 0x40eb
    dw __zdseg_0efa - __zdseg_start            ; 0x40ed
    db 0x06, 0x00
    dw __zdseg_0efc - __zdseg_start            ; 0x40f1
    dw __zdseg_0f06 - __zdseg_start            ; 0x40f3
    dw __zdseg_0f08 - __zdseg_start            ; 0x40f5
    dw __zdseg_0f0a - __zdseg_start            ; 0x40f7
    db 0x06, 0x00
    dw __zdseg_0f0c - __zdseg_start            ; 0x40fb
    dw __zdseg_0f16 - __zdseg_start            ; 0x40fd
    dw __zdseg_0f18 - __zdseg_start            ; 0x40ff
    dw __zdseg_0f1a - __zdseg_start            ; 0x4101
    db 0x06, 0x00
    dw __zdseg_0f1c - __zdseg_start            ; 0x4105
    dw __zdseg_0f26 - __zdseg_start            ; 0x4107
    dw __zdseg_0f2a - __zdseg_start            ; 0x4109
    dw __zdseg_0f2e - __zdseg_start            ; 0x410b
    db 0x06, 0x00
    dw __zdseg_0f30 - __zdseg_start            ; 0x410f
    dw __zdseg_0f3a - __zdseg_start            ; 0x4111
    dw __zdseg_0f3d - __zdseg_start            ; 0x4113
    dw __zdseg_0f40 - __zdseg_start            ; 0x4115
    db 0x06, 0x00
    dw __zdseg_0f42 - __zdseg_start            ; 0x4119
    dw __zdseg_0f4c - __zdseg_start            ; 0x411b
    dw __zdseg_0f50 - __zdseg_start            ; 0x411d
    dw __zdseg_0f54 - __zdseg_start            ; 0x411f
    db 0x06, 0x00
    dw __zdseg_0f56 - __zdseg_start            ; 0x4123
    dw __zdseg_0f60 - __zdseg_start            ; 0x4125
    dw __zdseg_0f64 - __zdseg_start            ; 0x4127
    dw __zdseg_0f68 - __zdseg_start            ; 0x4129
    db 0x06, 0x00
    dw __zdseg_0f6a - __zdseg_start            ; 0x412d
    dw __zdseg_0f74 - __zdseg_start            ; 0x412f
    dw __zdseg_0f77 - __zdseg_start            ; 0x4131
    dw __zdseg_0f7a - __zdseg_start            ; 0x4133
    db 0x06, 0x00
    dw __zdseg_0f7c - __zdseg_start            ; 0x4137
    dw __zdseg_0f86 - __zdseg_start            ; 0x4139
    dw __zdseg_0f8a - __zdseg_start            ; 0x413b
    dw __zdseg_0f8e - __zdseg_start            ; 0x413d
    db 0x06, 0x00
    dw __zdseg_0f90 - __zdseg_start            ; 0x4141
    dw __zdseg_0f9a - __zdseg_start            ; 0x4143
    dw __zdseg_0f9c - __zdseg_start            ; 0x4145
    dw __zdseg_0f9e - __zdseg_start            ; 0x4147
    db 0x06, 0x00
    dw __zdseg_0fa0 - __zdseg_start            ; 0x414b
    dw __zdseg_0faa - __zdseg_start            ; 0x414d
    dw __zdseg_0fae - __zdseg_start            ; 0x414f
    dw __zdseg_0fb2 - __zdseg_start            ; 0x4151
    db 0x06, 0x00
    dw __zdseg_0fb4 - __zdseg_start            ; 0x4155
    dw __zdseg_0fbe - __zdseg_start            ; 0x4157
    dw __zdseg_0fc2 - __zdseg_start            ; 0x4159
    dw __zdseg_0fc6 - __zdseg_start            ; 0x415b
    db 0x06, 0x00
    dw __zdseg_0fc8 - __zdseg_start            ; 0x415f
    dw __zdseg_0fd2 - __zdseg_start            ; 0x4161
    dw __zdseg_0fd6 - __zdseg_start            ; 0x4163
    dw __zdseg_0fda - __zdseg_start            ; 0x4165
    db 0x07, 0x00
    dw __zdseg_0fdc - __zdseg_start            ; 0x4169
    dw __zdseg_0fe6 - __zdseg_start            ; 0x416b
    dw __zdseg_0fe8 - __zdseg_start            ; 0x416d
    dw __zdseg_0fea - __zdseg_start            ; 0x416f
    db 0x07, 0x00
    dw __zdseg_0fec - __zdseg_start            ; 0x4173
    dw __zdseg_0ff7 - __zdseg_start            ; 0x4175
    dw __zdseg_0ff9 - __zdseg_start            ; 0x4177
    dw __zdseg_0ffb - __zdseg_start            ; 0x4179
    db 0x07, 0x00
    dw __zdseg_0ffd - __zdseg_start            ; 0x417d
    dw __zdseg_1008 - __zdseg_start            ; 0x417f
    dw __zdseg_100a - __zdseg_start            ; 0x4181
    dw __zdseg_100c - __zdseg_start            ; 0x4183
    db 0x07, 0x00
    dw __zdseg_100e - __zdseg_start            ; 0x4187
    dw __zdseg_1019 - __zdseg_start            ; 0x4189
    dw __zdseg_101b - __zdseg_start            ; 0x418b
    dw __zdseg_101d - __zdseg_start            ; 0x418d
    db 0x07, 0x00
    dw __zdseg_101f - __zdseg_start            ; 0x4191
    dw __zdseg_102a - __zdseg_start            ; 0x4193
    dw __zdseg_102c - __zdseg_start            ; 0x4195
    dw __zdseg_102e - __zdseg_start            ; 0x4197
    db 0x07, 0x00
    dw __zdseg_1030 - __zdseg_start            ; 0x419b
    dw __zdseg_103b - __zdseg_start            ; 0x419d
    dw __zdseg_103d - __zdseg_start            ; 0x419f
    dw __zdseg_103f - __zdseg_start            ; 0x41a1
    db 0x07, 0x00
    dw __zdseg_1041 - __zdseg_start            ; 0x41a5
    dw __zdseg_104c - __zdseg_start            ; 0x41a7
    dw __zdseg_104e - __zdseg_start            ; 0x41a9
    dw __zdseg_1050 - __zdseg_start            ; 0x41ab
    db 0x07, 0x00
    dw __zdseg_1052 - __zdseg_start            ; 0x41af
    dw __zdseg_105d - __zdseg_start            ; 0x41b1
    dw __zdseg_105f - __zdseg_start            ; 0x41b3
    dw __zdseg_1061 - __zdseg_start            ; 0x41b5
    db 0x07, 0x00
    dw __zdseg_1063 - __zdseg_start            ; 0x41b9
    dw __zdseg_106e - __zdseg_start            ; 0x41bb
    dw __zdseg_1070 - __zdseg_start            ; 0x41bd
    dw __zdseg_1072 - __zdseg_start            ; 0x41bf
    db 0x07, 0x00
    dw __zdseg_1074 - __zdseg_start            ; 0x41c3
    dw __zdseg_1081 - __zdseg_start            ; 0x41c5
    dw __zdseg_1083 - __zdseg_start            ; 0x41c7
    dw __zdseg_1085 - __zdseg_start            ; 0x41c9
    db 0x07, 0x00
    dw __zdseg_1087 - __zdseg_start            ; 0x41cd
    dw __zdseg_1094 - __zdseg_start            ; 0x41cf
    dw __zdseg_1096 - __zdseg_start            ; 0x41d1
    dw __zdseg_1098 - __zdseg_start            ; 0x41d3
    db 0x07, 0x00
    dw __zdseg_109a - __zdseg_start            ; 0x41d7
    dw __zdseg_10a7 - __zdseg_start            ; 0x41d9
    dw __zdseg_10a9 - __zdseg_start            ; 0x41db
    dw __zdseg_10ab - __zdseg_start            ; 0x41dd
    db 0x07, 0x00
    dw __zdseg_10ad - __zdseg_start            ; 0x41e1
    dw __zdseg_10ba - __zdseg_start            ; 0x41e3
    dw __zdseg_10bc - __zdseg_start            ; 0x41e5
    dw __zdseg_10be - __zdseg_start            ; 0x41e7
    db 0x08, 0x00
    dw __zdseg_10c0 - __zdseg_start            ; 0x41eb
    dw __zdseg_10cc - __zdseg_start            ; 0x41ed
    dw __zdseg_10ce - __zdseg_start            ; 0x41ef
    dw __zdseg_10d0 - __zdseg_start            ; 0x41f1
    db 0x08, 0x00
    dw __zdseg_10d2 - __zdseg_start            ; 0x41f5
    dw __zdseg_10de - __zdseg_start            ; 0x41f7
    dw __zdseg_10e0 - __zdseg_start            ; 0x41f9
    dw __zdseg_10e2 - __zdseg_start            ; 0x41fb
    db 0x08, 0x00
    dw __zdseg_10e4 - __zdseg_start            ; 0x41ff
    dw __zdseg_10f0 - __zdseg_start            ; 0x4201
    dw __zdseg_10f2 - __zdseg_start            ; 0x4203
    dw __zdseg_10f4 - __zdseg_start            ; 0x4205
    db 0x08, 0x00
    dw __zdseg_10f6 - __zdseg_start            ; 0x4209
    dw __zdseg_1102 - __zdseg_start            ; 0x420b
    dw __zdseg_1104 - __zdseg_start            ; 0x420d
    dw __zdseg_1106 - __zdseg_start            ; 0x420f
    db 0x08, 0x00
    dw __zdseg_1108 - __zdseg_start            ; 0x4213
    dw __zdseg_1114 - __zdseg_start            ; 0x4215
    dw __zdseg_1116 - __zdseg_start            ; 0x4217
    dw __zdseg_1118 - __zdseg_start            ; 0x4219
    db 0x08, 0x00
    dw __zdseg_111a - __zdseg_start            ; 0x421d
    dw __zdseg_1126 - __zdseg_start            ; 0x421f
    dw __zdseg_112d - __zdseg_start            ; 0x4221
    dw __zdseg_1134 - __zdseg_start            ; 0x4223
    db 0x08, 0x00
    dw __zdseg_1138 - __zdseg_start            ; 0x4227
    dw __zdseg_1144 - __zdseg_start            ; 0x4229
    dw __zdseg_1147 - __zdseg_start            ; 0x422b
    dw __zdseg_114a - __zdseg_start            ; 0x422d
    db 0x08, 0x00
    dw __zdseg_114d - __zdseg_start            ; 0x4231
    dw __zdseg_1159 - __zdseg_start            ; 0x4233
    dw __zdseg_115b - __zdseg_start            ; 0x4235
    dw __zdseg_115d - __zdseg_start            ; 0x4237
    db 0x08, 0x00
    dw __zdseg_115f - __zdseg_start            ; 0x423b
    dw __zdseg_116b - __zdseg_start            ; 0x423d
    dw __zdseg_116d - __zdseg_start            ; 0x423f
    dw __zdseg_116f - __zdseg_start            ; 0x4241
    db 0x08, 0x00
    dw __zdseg_1171 - __zdseg_start            ; 0x4245
    dw __zdseg_117d - __zdseg_start            ; 0x4247
    dw __zdseg_117f - __zdseg_start            ; 0x4249
    dw __zdseg_1181 - __zdseg_start            ; 0x424b
    db 0x08, 0x00
    dw __zdseg_1183 - __zdseg_start            ; 0x424f
    dw __zdseg_118f - __zdseg_start            ; 0x4251
    dw __zdseg_1191 - __zdseg_start            ; 0x4253
    dw __zdseg_1193 - __zdseg_start            ; 0x4255
    db 0x08, 0x00
    dw __zdseg_1195 - __zdseg_start            ; 0x4259
    dw __zdseg_11a1 - __zdseg_start            ; 0x425b
    dw __zdseg_11a3 - __zdseg_start            ; 0x425d
    dw __zdseg_11a5 - __zdseg_start            ; 0x425f
    db 0x08, 0x00
    dw __zdseg_11a7 - __zdseg_start            ; 0x4263
    dw __zdseg_11b3 - __zdseg_start            ; 0x4265
    dw __zdseg_11b8 - __zdseg_start            ; 0x4267
    dw __zdseg_11bd - __zdseg_start            ; 0x4269
    db 0x08, 0x00
    dw __zdseg_11c0 - __zdseg_start            ; 0x426d
    dw __zdseg_11cc - __zdseg_start            ; 0x426f
    dw __zdseg_11d2 - __zdseg_start            ; 0x4271
    dw __zdseg_11d8 - __zdseg_start            ; 0x4273
    db 0x08, 0x00
    dw __zdseg_11db - __zdseg_start            ; 0x4277
    dw __zdseg_11e7 - __zdseg_start            ; 0x4279
    dw __zdseg_11ed - __zdseg_start            ; 0x427b
    dw __zdseg_11f3 - __zdseg_start            ; 0x427d
    db 0x08, 0x00
    dw __zdseg_11f6 - __zdseg_start            ; 0x4281
    dw __zdseg_1202 - __zdseg_start            ; 0x4283
    dw __zdseg_1206 - __zdseg_start            ; 0x4285
    dw __zdseg_120a - __zdseg_start            ; 0x4287
    db 0x08, 0x00
    dw __zdseg_120d - __zdseg_start            ; 0x428b
    dw __zdseg_1219 - __zdseg_start            ; 0x428d
    dw __zdseg_121c - __zdseg_start            ; 0x428f
    dw __zdseg_121f - __zdseg_start            ; 0x4291
    db 0x08, 0x00
    dw __zdseg_1221 - __zdseg_start            ; 0x4295
    dw __zdseg_122d - __zdseg_start            ; 0x4297
    dw __zdseg_122f - __zdseg_start            ; 0x4299
    dw __zdseg_1231 - __zdseg_start            ; 0x429b
    db 0x08, 0x00
    dw __zdseg_1233 - __zdseg_start            ; 0x429f
    dw __zdseg_123f - __zdseg_start            ; 0x42a1
    dw __zdseg_1242 - __zdseg_start            ; 0x42a3
    dw __zdseg_1245 - __zdseg_start            ; 0x42a5
    db 0x08, 0x00
    dw __zdseg_1247 - __zdseg_start            ; 0x42a9
    dw __zdseg_1253 - __zdseg_start            ; 0x42ab
    dw __zdseg_125b - __zdseg_start            ; 0x42ad
    dw __zdseg_1263 - __zdseg_start            ; 0x42af
    db 0x08, 0x00
    dw __zdseg_1266 - __zdseg_start            ; 0x42b3
    dw __zdseg_1272 - __zdseg_start            ; 0x42b5
    dw __zdseg_1279 - __zdseg_start            ; 0x42b7
    dw __zdseg_1280 - __zdseg_start            ; 0x42b9
    db 0x08, 0x00
    dw __zdseg_1283 - __zdseg_start            ; 0x42bd
    dw __zdseg_128f - __zdseg_start            ; 0x42bf
    dw __zdseg_1291 - __zdseg_start            ; 0x42c1
    dw __zdseg_1293 - __zdseg_start            ; 0x42c3
    db 0x08, 0x00
    dw __zdseg_1295 - __zdseg_start            ; 0x42c7
    dw __zdseg_12a1 - __zdseg_start            ; 0x42c9
    dw __zdseg_12a3 - __zdseg_start            ; 0x42cb
    dw __zdseg_12a5 - __zdseg_start            ; 0x42cd
    db 0x08, 0x00
    dw __zdseg_12a7 - __zdseg_start            ; 0x42d1
    dw __zdseg_12b3 - __zdseg_start            ; 0x42d3
    dw __zdseg_12b7 - __zdseg_start            ; 0x42d5
    dw __zdseg_12bb - __zdseg_start            ; 0x42d7
    db 0x08, 0x00
    dw __zdseg_12be - __zdseg_start            ; 0x42db
    dw __zdseg_12ca - __zdseg_start            ; 0x42dd
    dw __zdseg_12ce - __zdseg_start            ; 0x42df
    dw __zdseg_12d2 - __zdseg_start            ; 0x42e1
    db 0x08, 0x00
    dw __zdseg_12d4 - __zdseg_start            ; 0x42e5
    dw __zdseg_12e0 - __zdseg_start            ; 0x42e7
    dw __zdseg_12e5 - __zdseg_start            ; 0x42e9
    dw __zdseg_12ea - __zdseg_start            ; 0x42eb
    db 0x08, 0x00
    dw __zdseg_12ed - __zdseg_start            ; 0x42ef
    dw __zdseg_12f9 - __zdseg_start            ; 0x42f1
    dw __zdseg_12fc - __zdseg_start            ; 0x42f3
    dw __zdseg_12ff - __zdseg_start            ; 0x42f5
    db 0x08, 0x00
    dw __zdseg_1301 - __zdseg_start            ; 0x42f9
    dw __zdseg_130d - __zdseg_start            ; 0x42fb
    dw __zdseg_130f - __zdseg_start            ; 0x42fd
    dw __zdseg_1311 - __zdseg_start            ; 0x42ff
    db 0x08, 0x00
    dw __zdseg_1313 - __zdseg_start            ; 0x4303
    dw __zdseg_131f - __zdseg_start            ; 0x4305
    dw __zdseg_1323 - __zdseg_start            ; 0x4307
    dw __zdseg_1327 - __zdseg_start            ; 0x4309
    db 0x08, 0x00
    dw __zdseg_132a - __zdseg_start            ; 0x430d
    dw __zdseg_1336 - __zdseg_start            ; 0x430f
    dw __zdseg_133b - __zdseg_start            ; 0x4311
    dw __zdseg_1340 - __zdseg_start            ; 0x4313
    db 0x08, 0x00
    dw __zdseg_1343 - __zdseg_start            ; 0x4317
    dw __zdseg_134f - __zdseg_start            ; 0x4319
    dw __zdseg_1354 - __zdseg_start            ; 0x431b
    dw __zdseg_1359 - __zdseg_start            ; 0x431d
    db 0x08, 0x00
    dw __zdseg_135c - __zdseg_start            ; 0x4321
    dw __zdseg_1368 - __zdseg_start            ; 0x4323
    dw __zdseg_136e - __zdseg_start            ; 0x4325
    dw __zdseg_1374 - __zdseg_start            ; 0x4327
    db 0x08, 0x00
    dw __zdseg_1377 - __zdseg_start            ; 0x432b
    dw __zdseg_1383 - __zdseg_start            ; 0x432d
    dw __zdseg_1386 - __zdseg_start            ; 0x432f
    dw __zdseg_1389 - __zdseg_start            ; 0x4331
    db 0x08, 0x00
    dw __zdseg_138c - __zdseg_start            ; 0x4335
    dw __zdseg_1398 - __zdseg_start            ; 0x4337
    dw __zdseg_139c - __zdseg_start            ; 0x4339
    dw __zdseg_13a0 - __zdseg_start            ; 0x433b
    db 0x08, 0x00
    dw __zdseg_13a2 - __zdseg_start            ; 0x433f
    dw __zdseg_13ae - __zdseg_start            ; 0x4341
    dw __zdseg_13b2 - __zdseg_start            ; 0x4343
    dw __zdseg_13b6 - __zdseg_start            ; 0x4345
    db 0x09, 0x00
    dw __zdseg_13b8 - __zdseg_start            ; 0x4349
    dw __zdseg_13c2 - __zdseg_start            ; 0x434b
    dw __zdseg_13c4 - __zdseg_start            ; 0x434d
    dw __zdseg_13c6 - __zdseg_start            ; 0x434f
    db 0x09, 0x00
    dw __zdseg_13c8 - __zdseg_start            ; 0x4353
    dw __zdseg_13d2 - __zdseg_start            ; 0x4355
    dw __zdseg_13d6 - __zdseg_start            ; 0x4357
    dw __zdseg_13da - __zdseg_start            ; 0x4359
    db 0x09, 0x00
    dw __zdseg_13dc - __zdseg_start            ; 0x435d
    dw __zdseg_13e6 - __zdseg_start            ; 0x435f
    dw __zdseg_13e8 - __zdseg_start            ; 0x4361
    dw __zdseg_13ea - __zdseg_start            ; 0x4363
    db 0x09, 0x00
    dw __zdseg_13ec - __zdseg_start            ; 0x4367
    dw __zdseg_13f6 - __zdseg_start            ; 0x4369
    dw __zdseg_13f8 - __zdseg_start            ; 0x436b
    dw __zdseg_13fa - __zdseg_start            ; 0x436d
    db 0x0a, 0x00
    dw __zdseg_13fc - __zdseg_start            ; 0x4371
    dw __zdseg_1406 - __zdseg_start            ; 0x4373
    dw __zdseg_1409 - __zdseg_start            ; 0x4375
    dw __zdseg_140c - __zdseg_start            ; 0x4377
    db 0x0a, 0x00
    dw __zdseg_140e - __zdseg_start            ; 0x437b
    dw __zdseg_1418 - __zdseg_start            ; 0x437d
    dw __zdseg_141a - __zdseg_start            ; 0x437f
    dw __zdseg_141c - __zdseg_start            ; 0x4381
    db 0x0a, 0x00
    dw __zdseg_141e - __zdseg_start            ; 0x4385
    dw __zdseg_1428 - __zdseg_start            ; 0x4387
    dw __zdseg_142a - __zdseg_start            ; 0x4389
    dw __zdseg_142c - __zdseg_start            ; 0x438b
    db 0x0a, 0x00
    dw __zdseg_142e - __zdseg_start            ; 0x438f
    dw __zdseg_1438 - __zdseg_start            ; 0x4391
    dw __zdseg_143b - __zdseg_start            ; 0x4393
    dw __zdseg_143e - __zdseg_start            ; 0x4395
    db 0xff, 0xff
    dw __zdseg_1440 - __zdseg_start            ; 0x4399
    dw __zdseg_1441 - __zdseg_start            ; 0x439b
    dw __zdseg_1442 - __zdseg_start            ; 0x439d
    dw __zdseg_1443 - __zdseg_start            ; 0x439f
__zdseg_08c1:
    db 'PLAYBANE.BAT', 0
__zdseg_08ce:
    db 0x41, 0x00
__zdseg_08d0:
    db 0x41, 0x00
__zdseg_08d2:
    db 0x41, 0x00
__zdseg_08d4:
    db 'WROOT.EXE', 0
__zdseg_08de:
    db 0x41, 0x00
__zdseg_08e0:
    db 0x41, 0x00
__zdseg_08e2:
    db 0x41, 0x00
__zdseg_08e4:
    db 'WINIT.OVR', 0
__zdseg_08ee:
    db 0x41, 0x00
__zdseg_08f0:
    db 0x41, 0x00
__zdseg_08f2:
    db 0x41, 0x00
__zdseg_08f4:
    db 'WBASE.OVR', 0
__zdseg_08fe:
    db 0x41, 0x00
__zdseg_0900:
    db 0x41, 0x00
__zdseg_0902:
    db 0x41, 0x00
__zdseg_0904:
    db 'WPCMK.OVR', 0
__zdseg_090e:
    db 0x41, 0x00
__zdseg_0910:
    db 0x41, 0x00
__zdseg_0912:
    db 0x41, 0x00
__zdseg_0914:
    db 'WPCVW.OVR', 0
__zdseg_091e:
    db 0x41, 0x43, 0x00
__zdseg_0921:
    db 0x2a, 0x00
__zdseg_0923:
    db 0x2a, 0x00
__zdseg_0925:
    db 'WMAZE.OVR', 0
__zdseg_092f:
    db 0x43, 0x00
__zdseg_0931:
    db 'BCDEFGHI', 0
__zdseg_093a:
    db 0x42, 0x43, 0x00
__zdseg_093d:
    db 'WDOPT.OVR', 0
__zdseg_0947:
    db 0x43, 0x00
__zdseg_0949:
    db 'BCDEFGHI', 0
__zdseg_0952:
    db 0x42, 0x43, 0x00
__zdseg_0955:
    db 'WTREA.OVR', 0
__zdseg_095f:
    db 0x43, 0x00
__zdseg_0961:
    db 'BCDEFGHI', 0
__zdseg_096a:
    db 0x42, 0x43, 0x00
__zdseg_096d:
    db 'WMELE.OVR', 0
__zdseg_0977:
    db 0x43, 0x00
__zdseg_0979:
    db 'BCDEFGHI', 0
__zdseg_0982:
    db 0x42, 0x43, 0x00
__zdseg_0985:
    db 'WPOPS.OVR', 0
__zdseg_098f:
    db 0x43, 0x00
__zdseg_0991:
    db 'BCDEFGHI', 0
__zdseg_099a:
    db 0x42, 0x43, 0x00
__zdseg_099d:
    db 'WMEXE.OVR', 0
__zdseg_09a7:
    db 0x43, 0x00
__zdseg_09a9:
    db 'BCDEFGHI', 0
__zdseg_09b2:
    db 0x42, 0x43, 0x00
__zdseg_09b5:
    db 'WMNPC.OVR', 0
__zdseg_09bf:
    db 0x43, 0x00
__zdseg_09c1:
    db 'BCDEFGHI', 0
__zdseg_09ca:
    db 0x42, 0x43, 0x00
__zdseg_09cd:
    db 'SCENARIO.HDR', 0
__zdseg_09da:
    db 0x41, 0x00
__zdseg_09dc:
    db 0x41, 0x00
__zdseg_09de:
    db 0x41, 0x00
__zdseg_09e0:
    db 'MSG.HDR', 0
__zdseg_09e8:
    db 0x41, 0x00
__zdseg_09ea:
    db 0x41, 0x00
__zdseg_09ec:
    db 0x41, 0x00
__zdseg_09ee:
    db 'MASTER.HDR', 0
__zdseg_09f9:
    db 0x41, 0x00
__zdseg_09fb:
    db 0x41, 0x00
__zdseg_09fd:
    db 0x41, 0x00
__zdseg_09ff:
    db 'MISC.HDR', 0
__zdseg_0a08:
    db 0x41, 0x00
__zdseg_0a0a:
    db 0x41, 0x00
__zdseg_0a0c:
    db 0x41, 0x00
__zdseg_0a0e:
    db 'PCFILE.DBS', 0
__zdseg_0a19:
    db 0x41, 0x00
__zdseg_0a1b:
    db 0x41, 0x00
__zdseg_0a1d:
    db 0x41, 0x00
__zdseg_0a1f:
    db 'MSG.DBS', 0
__zdseg_0a27:
    db 0x41, 0x43, 0x00
__zdseg_0a2a:
    db 0x2a, 0x00
__zdseg_0a2c:
    db 0x2a, 0x00
__zdseg_0a2e:
    db 'NEWGAME.DBS', 0
__zdseg_0a3a:
    db 0x42, 0x00
__zdseg_0a3c:
    db 0x41, 0x00
__zdseg_0a3e:
    db 0x41, 0x00
__zdseg_0a40:
    db 'CREDITS.PIC', 0
__zdseg_0a4c:
    db 0x42, 0x00
__zdseg_0a4e:
    db 0x41, 0x00
__zdseg_0a50:
    db 0x41, 0x00
__zdseg_0a52:
    db 'EGA.DRV', 0
__zdseg_0a5a:
    db 0x41, 0x00
__zdseg_0a5c:
    db 0x41, 0x00
__zdseg_0a5e:
    db 0x41, 0x00
__zdseg_0a60:
    db 'WFONT0.EGA', 0
__zdseg_0a6b:
    db 0x41, 0x00
__zdseg_0a6d:
    db 0x41, 0x00
__zdseg_0a6f:
    db 0x41, 0x00
__zdseg_0a71:
    db 'WFONT1.EGA', 0
__zdseg_0a7c:
    db 0x41, 0x00
__zdseg_0a7e:
    db 0x41, 0x00
__zdseg_0a80:
    db 0x41, 0x00
__zdseg_0a82:
    db 'WFONT2.EGA', 0
__zdseg_0a8d:
    db 0x41, 0x00
__zdseg_0a8f:
    db 0x41, 0x00
__zdseg_0a91:
    db 0x41, 0x00
__zdseg_0a93:
    db 'WFONT3.EGA', 0
__zdseg_0a9e:
    db 0x41, 0x00
__zdseg_0aa0:
    db 0x41, 0x00
__zdseg_0aa2:
    db 0x41, 0x00
__zdseg_0aa4:
    db 'WFONT4.EGA', 0
__zdseg_0aaf:
    db 0x41, 0x00
__zdseg_0ab1:
    db 0x41, 0x00
__zdseg_0ab3:
    db 0x41, 0x00
__zdseg_0ab5:
    db 'WPORT1.EGA', 0
__zdseg_0ac0:
    db 0x41, 0x00
__zdseg_0ac2:
    db 0x41, 0x00
__zdseg_0ac4:
    db 0x41, 0x00
__zdseg_0ac6:
    db 'WPORT2.EGA', 0
__zdseg_0ad1:
    db 0x41, 0x00
__zdseg_0ad3:
    db 0x41, 0x00
__zdseg_0ad5:
    db 0x41, 0x00
__zdseg_0ad7:
    db 'WPORT3.EGA', 0
__zdseg_0ae2:
    db 0x41, 0x00
__zdseg_0ae4:
    db 0x41, 0x00
__zdseg_0ae6:
    db 0x41, 0x00
__zdseg_0ae8:
    db 'DRAGONSC.EGA', 0
__zdseg_0af5:
    db 0x42, 0x00
__zdseg_0af7:
    db 0x41, 0x00
__zdseg_0af9:
    db 0x41, 0x00
__zdseg_0afb:
    db 'GRAVEYRD.EGA', 0
__zdseg_0b08:
    db 0x42, 0x00
__zdseg_0b0a:
    db 0x41, 0x00
__zdseg_0b0c:
    db 0x41, 0x00
__zdseg_0b0e:
    db 'TITLEPAG.EGA', 0
__zdseg_0b1b:
    db 0x42, 0x00
__zdseg_0b1d:
    db 0x41, 0x00
__zdseg_0b1f:
    db 0x41, 0x00
__zdseg_0b21:
    db 'MAZEDATA.EGA', 0
__zdseg_0b2e:
    db 0x42, 0x00
__zdseg_0b30:
    db 0x41, 0x00
__zdseg_0b32:
    db 0x41, 0x00
__zdseg_0b34:
    db 'MON00.PIC', 0
__zdseg_0b3e:
    db 'DEFGHIJK', 0
__zdseg_0b47:
    db 'BCDEFGHI', 0
__zdseg_0b50:
    db 0x42, 0x43, 0x00
__zdseg_0b53:
    db 'MON01.PIC', 0
__zdseg_0b5d:
    db 0x42, 0x00
__zdseg_0b5f:
    db 0x41, 0x00
__zdseg_0b61:
    db 0x41, 0x00
__zdseg_0b63:
    db 'MON02.PIC', 0
__zdseg_0b6d:
    db 0x42, 0x00
__zdseg_0b6f:
    db 0x41, 0x00
__zdseg_0b71:
    db 0x41, 0x00
__zdseg_0b73:
    db 'MON03.PIC', 0
__zdseg_0b7d:
    db 0x42, 0x00
__zdseg_0b7f:
    db 0x41, 0x00
__zdseg_0b81:
    db 0x41, 0x00
__zdseg_0b83:
    db 'MON04.PIC', 0
__zdseg_0b8d:
    db 0x42, 0x00
__zdseg_0b8f:
    db 0x41, 0x00
__zdseg_0b91:
    db 0x41, 0x00
__zdseg_0b93:
    db 'MON05.PIC', 0
__zdseg_0b9d:
    db 0x42, 0x00
__zdseg_0b9f:
    db 0x41, 0x00
__zdseg_0ba1:
    db 0x41, 0x00
__zdseg_0ba3:
    db 'MON06.PIC', 0
__zdseg_0bad:
    db 0x42, 0x00
__zdseg_0baf:
    db 0x41, 0x00
__zdseg_0bb1:
    db 0x41, 0x00
__zdseg_0bb3:
    db 'MON07.PIC', 0
__zdseg_0bbd:
    db 0x42, 0x00
__zdseg_0bbf:
    db 0x41, 0x00
__zdseg_0bc1:
    db 0x41, 0x00
__zdseg_0bc3:
    db 'MON08.PIC', 0
__zdseg_0bcd:
    db 0x42, 0x00
__zdseg_0bcf:
    db 0x41, 0x00
__zdseg_0bd1:
    db 0x41, 0x00
__zdseg_0bd3:
    db 'MON09.PIC', 0
__zdseg_0bdd:
    db 0x47, 0x49, 0x4a, 0x00
__zdseg_0be1:
    db 0x45, 0x47, 0x48, 0x00
__zdseg_0be5:
    db 0x43, 0x00
__zdseg_0be7:
    db 'MON10.PIC', 0
__zdseg_0bf1:
    db 0x4a, 0x00
__zdseg_0bf3:
    db 0x48, 0x00
__zdseg_0bf5:
    db 0x43, 0x00
__zdseg_0bf7:
    db 'MON11.PIC', 0
__zdseg_0c01:
    db 0x44, 0x00
__zdseg_0c03:
    db 0x42, 0x00
__zdseg_0c05:
    db 0x42, 0x00
__zdseg_0c07:
    db 'MON12.PIC', 0
__zdseg_0c11:
    db 0x46, 0x47, 0x4a, 0x00
__zdseg_0c15:
    db 0x44, 0x45, 0x48, 0x00
__zdseg_0c19:
    db 0x43, 0x00
__zdseg_0c1b:
    db 'MON13.PIC', 0
__zdseg_0c25:
    db 0x45, 0x4a, 0x00
__zdseg_0c28:
    db 0x43, 0x48, 0x00
__zdseg_0c2b:
    db 0x42, 0x43, 0x00
__zdseg_0c2e:
    db 'MON14.PIC', 0
__zdseg_0c38:
    db 0x46, 0x47, 0x49, 0x00
__zdseg_0c3c:
    db 0x44, 0x45, 0x47, 0x00
__zdseg_0c40:
    db 0x43, 0x00
__zdseg_0c42:
    db 'MON15.PIC', 0
__zdseg_0c4c:
    db 0x45, 0x00
__zdseg_0c4e:
    db 0x43, 0x00
__zdseg_0c50:
    db 0x42, 0x00
__zdseg_0c52:
    db 'MON16.PIC', 0
__zdseg_0c5c:
    db 0x44, 0x45, 0x00
__zdseg_0c5f:
    db 0x42, 0x43, 0x00
__zdseg_0c62:
    db 0x42, 0x00
__zdseg_0c64:
    db 'MON17.PIC', 0
__zdseg_0c6e:
    db 0x44, 0x45, 0x46, 0x00
__zdseg_0c72:
    db 0x42, 0x43, 0x44, 0x00
__zdseg_0c76:
    db 0x42, 0x43, 0x00
__zdseg_0c79:
    db 'MON18.PIC', 0
__zdseg_0c83:
    db 0x44, 0x47, 0x4b, 0x00
__zdseg_0c87:
    db 0x42, 0x45, 0x49, 0x00
__zdseg_0c8b:
    db 0x42, 0x43, 0x00
__zdseg_0c8e:
    db 'MON19.PIC', 0
__zdseg_0c98:
    db 'DEGIK', 0
__zdseg_0c9e:
    db 'BCEGI', 0
__zdseg_0ca4:
    db 0x42, 0x43, 0x00
__zdseg_0ca7:
    db 'MON20.PIC', 0
__zdseg_0cb1:
    db 0x44, 0x45, 0x00
__zdseg_0cb4:
    db 0x42, 0x43, 0x00
__zdseg_0cb7:
    db 0x42, 0x00
__zdseg_0cb9:
    db 'MON21.PIC', 0
__zdseg_0cc3:
    db 0x44, 0x4b, 0x00
__zdseg_0cc6:
    db 0x42, 0x49, 0x00
__zdseg_0cc9:
    db 0x42, 0x43, 0x00
__zdseg_0ccc:
    db 'MON22.PIC', 0
__zdseg_0cd6:
    db 0x44, 0x45, 0x00
__zdseg_0cd9:
    db 0x42, 0x43, 0x00
__zdseg_0cdc:
    db 0x42, 0x00
__zdseg_0cde:
    db 'MON23.PIC', 0
__zdseg_0ce8:
    db 0x44, 0x45, 0x00
__zdseg_0ceb:
    db 0x42, 0x43, 0x00
__zdseg_0cee:
    db 0x42, 0x00
__zdseg_0cf0:
    db 'MON24.PIC', 0
__zdseg_0cfa:
    db 0x44, 0x45, 0x00
__zdseg_0cfd:
    db 0x42, 0x43, 0x00
__zdseg_0d00:
    db 0x42, 0x00
__zdseg_0d02:
    db 'MON25.PIC', 0
__zdseg_0d0c:
    db 0x44, 0x45, 0x47, 0x00
__zdseg_0d10:
    db 0x42, 0x43, 0x45, 0x00
__zdseg_0d14:
    db 0x42, 0x43, 0x00
__zdseg_0d17:
    db 'MON26.PIC', 0
__zdseg_0d21:
    db 'DEFIJ', 0
__zdseg_0d27:
    db 'BCDGH', 0
__zdseg_0d2d:
    db 0x42, 0x43, 0x00
__zdseg_0d30:
    db 'MON27.PIC', 0
__zdseg_0d3a:
    db 0x44, 0x00
__zdseg_0d3c:
    db 0x42, 0x00
__zdseg_0d3e:
    db 0x42, 0x00
__zdseg_0d40:
    db 'MON28.PIC', 0
__zdseg_0d4a:
    db 0x45, 0x4a, 0x00
__zdseg_0d4d:
    db 0x43, 0x48, 0x00
__zdseg_0d50:
    db 0x42, 0x43, 0x00
__zdseg_0d53:
    db 'CGA.DRV', 0
__zdseg_0d5b:
    db 0x41, 0x00
__zdseg_0d5d:
    db 0x41, 0x00
__zdseg_0d5f:
    db 0x41, 0x00
__zdseg_0d61:
    db 'HERC.DRV', 0
__zdseg_0d6a:
    db 0x41, 0x00
__zdseg_0d6c:
    db 0x41, 0x00
__zdseg_0d6e:
    db 0x41, 0x00
__zdseg_0d70:
    db 'WFONT0.CGA', 0
__zdseg_0d7b:
    db 0x41, 0x00
__zdseg_0d7d:
    db 0x41, 0x00
__zdseg_0d7f:
    db 0x41, 0x00
__zdseg_0d81:
    db 'WFONT1.CGA', 0
__zdseg_0d8c:
    db 0x41, 0x00
__zdseg_0d8e:
    db 0x41, 0x00
__zdseg_0d90:
    db 0x41, 0x00
__zdseg_0d92:
    db 'WFONT2.CGA', 0
__zdseg_0d9d:
    db 0x41, 0x00
__zdseg_0d9f:
    db 0x41, 0x00
__zdseg_0da1:
    db 0x41, 0x00
__zdseg_0da3:
    db 'WFONT3.CGA', 0
__zdseg_0dae:
    db 0x41, 0x00
__zdseg_0db0:
    db 0x41, 0x00
__zdseg_0db2:
    db 0x41, 0x00
__zdseg_0db4:
    db 'WFONT4.CGA', 0
__zdseg_0dbf:
    db 0x41, 0x00
__zdseg_0dc1:
    db 0x41, 0x00
__zdseg_0dc3:
    db 0x41, 0x00
__zdseg_0dc5:
    db 'WPORT1.CGA', 0
__zdseg_0dd0:
    db 0x41, 0x00
__zdseg_0dd2:
    db 0x41, 0x00
__zdseg_0dd4:
    db 0x41, 0x00
__zdseg_0dd6:
    db 'WPORT2.CGA', 0
__zdseg_0de1:
    db 0x41, 0x00
__zdseg_0de3:
    db 0x41, 0x00
__zdseg_0de5:
    db 0x41, 0x00
__zdseg_0de7:
    db 'WPORT3.CGA', 0
__zdseg_0df2:
    db 0x41, 0x00
__zdseg_0df4:
    db 0x41, 0x00
__zdseg_0df6:
    db 0x41, 0x00
__zdseg_0df8:
    db 'DRAGONSC.CGA', 0
__zdseg_0e05:
    db 0x42, 0x00
__zdseg_0e07:
    db 0x41, 0x00
__zdseg_0e09:
    db 0x41, 0x00
__zdseg_0e0b:
    db 'GRAVEYRD.CGA', 0
__zdseg_0e18:
    db 0x42, 0x00
__zdseg_0e1a:
    db 0x41, 0x00
__zdseg_0e1c:
    db 0x41, 0x00
__zdseg_0e1e:
    db 'TITLEPAG.CGA', 0
__zdseg_0e2b:
    db 0x42, 0x00
__zdseg_0e2d:
    db 0x41, 0x00
__zdseg_0e2f:
    db 0x41, 0x00
__zdseg_0e31:
    db 'MAZEDATA.CGA', 0
__zdseg_0e3e:
    db 0x42, 0x00
__zdseg_0e40:
    db 0x41, 0x00
__zdseg_0e42:
    db 0x41, 0x00
__zdseg_0e44:
    db 'MON29.PIC', 0
__zdseg_0e4e:
    db 0x44, 0x4a, 0x00
__zdseg_0e51:
    db 0x42, 0x48, 0x00
__zdseg_0e54:
    db 0x42, 0x43, 0x00
__zdseg_0e57:
    db 'MON30.PIC', 0
__zdseg_0e61:
    db 0x45, 0x46, 0x47, 0x00
__zdseg_0e65:
    db 0x43, 0x44, 0x45, 0x00
__zdseg_0e69:
    db 0x42, 0x43, 0x00
__zdseg_0e6c:
    db 'MON31.PIC', 0
__zdseg_0e76:
    db 0x44, 0x45, 0x46, 0x00
__zdseg_0e7a:
    db 0x42, 0x43, 0x44, 0x00
__zdseg_0e7e:
    db 0x42, 0x43, 0x00
__zdseg_0e81:
    db 'MON32.PIC', 0
__zdseg_0e8b:
    db 0x45, 0x00
__zdseg_0e8d:
    db 0x43, 0x00
__zdseg_0e8f:
    db 0x42, 0x00
__zdseg_0e91:
    db 'MON33.PIC', 0
__zdseg_0e9b:
    db 0x44, 0x46, 0x47, 0x00
__zdseg_0e9f:
    db 0x42, 0x44, 0x45, 0x00
__zdseg_0ea3:
    db 0x42, 0x43, 0x00
__zdseg_0ea6:
    db 'MON34.PIC', 0
__zdseg_0eb0:
    db 0x46, 0x00
__zdseg_0eb2:
    db 0x44, 0x00
__zdseg_0eb4:
    db 0x43, 0x00
__zdseg_0eb6:
    db 'MON35.PIC', 0
__zdseg_0ec0:
    db 0x46, 0x4a, 0x4b, 0x00
__zdseg_0ec4:
    db 0x44, 0x48, 0x49, 0x00
__zdseg_0ec8:
    db 0x43, 0x00
__zdseg_0eca:
    db 'MON36.PIC', 0
__zdseg_0ed4:
    db 0x46, 0x00
__zdseg_0ed6:
    db 0x44, 0x00
__zdseg_0ed8:
    db 0x43, 0x00
__zdseg_0eda:
    db 'MON37.PIC', 0
__zdseg_0ee4:
    db 0x46, 0x48, 0x00
__zdseg_0ee7:
    db 0x44, 0x46, 0x00
__zdseg_0eea:
    db 0x43, 0x00
__zdseg_0eec:
    db 'MON38.PIC', 0
__zdseg_0ef6:
    db 0x46, 0x00
__zdseg_0ef8:
    db 0x44, 0x00
__zdseg_0efa:
    db 0x43, 0x00
__zdseg_0efc:
    db 'MON39.PIC', 0
__zdseg_0f06:
    db 0x46, 0x00
__zdseg_0f08:
    db 0x44, 0x00
__zdseg_0f0a:
    db 0x43, 0x00
__zdseg_0f0c:
    db 'MON40.PIC', 0
__zdseg_0f16:
    db 0x48, 0x00
__zdseg_0f18:
    db 0x46, 0x00
__zdseg_0f1a:
    db 0x43, 0x00
__zdseg_0f1c:
    db 'MON41.PIC', 0
__zdseg_0f26:
    db 0x47, 0x48, 0x49, 0x00
__zdseg_0f2a:
    db 0x45, 0x46, 0x47, 0x00
__zdseg_0f2e:
    db 0x43, 0x00
__zdseg_0f30:
    db 'MON42.PIC', 0
__zdseg_0f3a:
    db 0x48, 0x49, 0x00
__zdseg_0f3d:
    db 0x46, 0x47, 0x00
__zdseg_0f40:
    db 0x43, 0x00
__zdseg_0f42:
    db 'MON43.PIC', 0
__zdseg_0f4c:
    db 0x47, 0x49, 0x4a, 0x00
__zdseg_0f50:
    db 0x45, 0x47, 0x48, 0x00
__zdseg_0f54:
    db 0x43, 0x00
__zdseg_0f56:
    db 'MON44.PIC', 0
__zdseg_0f60:
    db 0x47, 0x48, 0x49, 0x00
__zdseg_0f64:
    db 0x45, 0x46, 0x47, 0x00
__zdseg_0f68:
    db 0x43, 0x00
__zdseg_0f6a:
    db 'MON45.PIC', 0
__zdseg_0f74:
    db 0x47, 0x4b, 0x00
__zdseg_0f77:
    db 0x45, 0x49, 0x00
__zdseg_0f7a:
    db 0x43, 0x00
__zdseg_0f7c:
    db 'MON46.PIC', 0
__zdseg_0f86:
    db 0x47, 0x49, 0x4b, 0x00
__zdseg_0f8a:
    db 0x45, 0x47, 0x49, 0x00
__zdseg_0f8e:
    db 0x43, 0x00
__zdseg_0f90:
    db 'MON47.PIC', 0
__zdseg_0f9a:
    db 0x4a, 0x00
__zdseg_0f9c:
    db 0x48, 0x00
__zdseg_0f9e:
    db 0x43, 0x00
__zdseg_0fa0:
    db 'MON48.PIC', 0
__zdseg_0faa:
    db 0x47, 0x49, 0x4a, 0x00
__zdseg_0fae:
    db 0x45, 0x47, 0x48, 0x00
__zdseg_0fb2:
    db 0x43, 0x00
__zdseg_0fb4:
    db 'MON49.PIC', 0
__zdseg_0fbe:
    db 0x49, 0x4a, 0x4b, 0x00
__zdseg_0fc2:
    db 0x47, 0x48, 0x49, 0x00
__zdseg_0fc6:
    db 0x43, 0x00
__zdseg_0fc8:
    db 'MON50.PIC', 0
__zdseg_0fd2:
    db 0x49, 0x4a, 0x4b, 0x00
__zdseg_0fd6:
    db 0x47, 0x48, 0x49, 0x00
__zdseg_0fda:
    db 0x43, 0x00
__zdseg_0fdc:
    db 'TANDY.DRV', 0
__zdseg_0fe6:
    db 0x41, 0x00
__zdseg_0fe8:
    db 0x41, 0x00
__zdseg_0fea:
    db 0x41, 0x00
__zdseg_0fec:
    db 'WFONT0.T16', 0
__zdseg_0ff7:
    db 0x41, 0x00
__zdseg_0ff9:
    db 0x41, 0x00
__zdseg_0ffb:
    db 0x41, 0x00
__zdseg_0ffd:
    db 'WFONT1.T16', 0
__zdseg_1008:
    db 0x41, 0x00
__zdseg_100a:
    db 0x41, 0x00
__zdseg_100c:
    db 0x41, 0x00
__zdseg_100e:
    db 'WFONT2.T16', 0
__zdseg_1019:
    db 0x41, 0x00
__zdseg_101b:
    db 0x41, 0x00
__zdseg_101d:
    db 0x41, 0x00
__zdseg_101f:
    db 'WFONT3.T16', 0
__zdseg_102a:
    db 0x41, 0x00
__zdseg_102c:
    db 0x41, 0x00
__zdseg_102e:
    db 0x41, 0x00
__zdseg_1030:
    db 'WFONT4.T16', 0
__zdseg_103b:
    db 0x41, 0x00
__zdseg_103d:
    db 0x41, 0x00
__zdseg_103f:
    db 0x41, 0x00
__zdseg_1041:
    db 'WPORT1.T16', 0
__zdseg_104c:
    db 0x41, 0x00
__zdseg_104e:
    db 0x41, 0x00
__zdseg_1050:
    db 0x41, 0x00
__zdseg_1052:
    db 'WPORT2.T16', 0
__zdseg_105d:
    db 0x41, 0x00
__zdseg_105f:
    db 0x41, 0x00
__zdseg_1061:
    db 0x41, 0x00
__zdseg_1063:
    db 'WPORT3.T16', 0
__zdseg_106e:
    db 0x41, 0x00
__zdseg_1070:
    db 0x41, 0x00
__zdseg_1072:
    db 0x41, 0x00
__zdseg_1074:
    db 'DRAGONSC.T16', 0
__zdseg_1081:
    db 0x42, 0x00
__zdseg_1083:
    db 0x41, 0x00
__zdseg_1085:
    db 0x41, 0x00
__zdseg_1087:
    db 'GRAVEYRD.T16', 0
__zdseg_1094:
    db 0x42, 0x00
__zdseg_1096:
    db 0x41, 0x00
__zdseg_1098:
    db 0x41, 0x00
__zdseg_109a:
    db 'TITLEPAG.T16', 0
__zdseg_10a7:
    db 0x42, 0x00
__zdseg_10a9:
    db 0x41, 0x00
__zdseg_10ab:
    db 0x41, 0x00
__zdseg_10ad:
    db 'MAZEDATA.T16', 0
__zdseg_10ba:
    db 0x42, 0x00
__zdseg_10bc:
    db 0x41, 0x00
__zdseg_10be:
    db 0x41, 0x00
__zdseg_10c0:
    db 'SOUND00.SND', 0
__zdseg_10cc:
    db 0x42, 0x00
__zdseg_10ce:
    db 0x41, 0x00
__zdseg_10d0:
    db 0x41, 0x00
__zdseg_10d2:
    db 'SOUND02.SND', 0
__zdseg_10de:
    db 0x42, 0x00
__zdseg_10e0:
    db 0x41, 0x00
__zdseg_10e2:
    db 0x41, 0x00
__zdseg_10e4:
    db 'SOUND03.SND', 0
__zdseg_10f0:
    db 0x42, 0x00
__zdseg_10f2:
    db 0x41, 0x00
__zdseg_10f4:
    db 0x41, 0x00
__zdseg_10f6:
    db 'SOUND04.SND', 0
__zdseg_1102:
    db 0x42, 0x00
__zdseg_1104:
    db 0x41, 0x00
__zdseg_1106:
    db 0x41, 0x00
__zdseg_1108:
    db 'SOUND05.SND', 0
__zdseg_1114:
    db 0x42, 0x00
__zdseg_1116:
    db 0x41, 0x00
__zdseg_1118:
    db 0x41, 0x00
__zdseg_111a:
    db 'SOUND06.SND', 0
__zdseg_1126:
    db 'BDGHIJ', 0
__zdseg_112d:
    db 'ABEFGH', 0
__zdseg_1134:
    db 0x41, 0x42, 0x43, 0x00
__zdseg_1138:
    db 'SOUND07.SND', 0
__zdseg_1144:
    db 0x42, 0x45, 0x00
__zdseg_1147:
    db 0x41, 0x43, 0x00
__zdseg_114a:
    db 0x41, 0x42, 0x00
__zdseg_114d:
    db 'SOUND08.SND', 0
__zdseg_1159:
    db 0x42, 0x00
__zdseg_115b:
    db 0x41, 0x00
__zdseg_115d:
    db 0x41, 0x00
__zdseg_115f:
    db 'SOUND10.SND', 0
__zdseg_116b:
    db 0x42, 0x00
__zdseg_116d:
    db 0x41, 0x00
__zdseg_116f:
    db 0x41, 0x00
__zdseg_1171:
    db 'SOUND11.SND', 0
__zdseg_117d:
    db 0x42, 0x00
__zdseg_117f:
    db 0x41, 0x00
__zdseg_1181:
    db 0x41, 0x00
__zdseg_1183:
    db 'SOUND12.SND', 0
__zdseg_118f:
    db 0x42, 0x00
__zdseg_1191:
    db 0x41, 0x00
__zdseg_1193:
    db 0x41, 0x00
__zdseg_1195:
    db 'SOUND13.SND', 0
__zdseg_11a1:
    db 0x42, 0x00
__zdseg_11a3:
    db 0x41, 0x00
__zdseg_11a5:
    db 0x41, 0x00
__zdseg_11a7:
    db 'SOUND14.SND', 0
__zdseg_11b3:
    db 0x44, 0x45, 0x46, 0x48, 0x00
__zdseg_11b8:
    db 0x42, 0x43, 0x44, 0x46, 0x00
__zdseg_11bd:
    db 0x42, 0x43, 0x00
__zdseg_11c0:
    db 'SOUND15.SND', 0
__zdseg_11cc:
    db 'DFGJK', 0
__zdseg_11d2:
    db 'BDEHI', 0
__zdseg_11d8:
    db 0x42, 0x43, 0x00
__zdseg_11db:
    db 'SOUND16.SND', 0
__zdseg_11e7:
    db 'DEFIK', 0
__zdseg_11ed:
    db 'BCDGI', 0
__zdseg_11f3:
    db 0x42, 0x43, 0x00
__zdseg_11f6:
    db 'SOUND17.SND', 0
__zdseg_1202:
    db 0x44, 0x45, 0x4b, 0x00
__zdseg_1206:
    db 0x42, 0x43, 0x49, 0x00
__zdseg_120a:
    db 0x42, 0x43, 0x00
__zdseg_120d:
    db 'SOUND20.SND', 0
__zdseg_1219:
    db 0x48, 0x49, 0x00
__zdseg_121c:
    db 0x46, 0x47, 0x00
__zdseg_121f:
    db 0x43, 0x00
__zdseg_1221:
    db 'SOUND21.SND', 0
__zdseg_122d:
    db 0x44, 0x00
__zdseg_122f:
    db 0x42, 0x00
__zdseg_1231:
    db 0x42, 0x00
__zdseg_1233:
    db 'SOUND22.SND', 0
__zdseg_123f:
    db 0x44, 0x45, 0x00
__zdseg_1242:
    db 0x42, 0x43, 0x00
__zdseg_1245:
    db 0x42, 0x00
__zdseg_1247:
    db 'SOUND23.SND', 0
__zdseg_1253:
    db 'DEFGIJK', 0
__zdseg_125b:
    db 'BCDEGHI', 0
__zdseg_1263:
    db 0x42, 0x43, 0x00
__zdseg_1266:
    db 'SOUND24.SND', 0
__zdseg_1272:
    db 'DEFIJK', 0
__zdseg_1279:
    db 'BCDGHI', 0
__zdseg_1280:
    db 0x42, 0x43, 0x00
__zdseg_1283:
    db 'SOUND25.SND', 0
__zdseg_128f:
    db 0x44, 0x00
__zdseg_1291:
    db 0x42, 0x00
__zdseg_1293:
    db 0x42, 0x00
__zdseg_1295:
    db 'SOUND26.SND', 0
__zdseg_12a1:
    db 0x46, 0x00
__zdseg_12a3:
    db 0x44, 0x00
__zdseg_12a5:
    db 0x43, 0x00
__zdseg_12a7:
    db 'SOUND27.SND', 0
__zdseg_12b3:
    db 0x44, 0x45, 0x47, 0x00
__zdseg_12b7:
    db 0x42, 0x43, 0x45, 0x00
__zdseg_12bb:
    db 0x42, 0x43, 0x00
__zdseg_12be:
    db 'SOUND28.SND', 0
__zdseg_12ca:
    db 0x47, 0x4a, 0x4b, 0x00
__zdseg_12ce:
    db 0x45, 0x48, 0x49, 0x00
__zdseg_12d2:
    db 0x43, 0x00
__zdseg_12d4:
    db 'SOUND29.SND', 0
__zdseg_12e0:
    db 0x45, 0x46, 0x47, 0x4b, 0x00
__zdseg_12e5:
    db 0x43, 0x44, 0x45, 0x49, 0x00
__zdseg_12ea:
    db 0x42, 0x43, 0x00
__zdseg_12ed:
    db 'SOUND30.SND', 0
__zdseg_12f9:
    db 0x46, 0x48, 0x00
__zdseg_12fc:
    db 0x44, 0x46, 0x00
__zdseg_12ff:
    db 0x43, 0x00
__zdseg_1301:
    db 'SOUND31.SND', 0
__zdseg_130d:
    db 0x46, 0x00
__zdseg_130f:
    db 0x44, 0x00
__zdseg_1311:
    db 0x43, 0x00
__zdseg_1313:
    db 'SOUND32.SND', 0
__zdseg_131f:
    db 0x45, 0x46, 0x47, 0x00
__zdseg_1323:
    db 0x43, 0x44, 0x45, 0x00
__zdseg_1327:
    db 0x42, 0x43, 0x00
__zdseg_132a:
    db 'SOUND33.SND', 0
__zdseg_1336:
    db 0x44, 0x46, 0x47, 0x49, 0x00
__zdseg_133b:
    db 0x42, 0x44, 0x45, 0x47, 0x00
__zdseg_1340:
    db 0x42, 0x43, 0x00
__zdseg_1343:
    db 'SOUND34.SND', 0
__zdseg_134f:
    db 0x42, 0x47, 0x48, 0x49, 0x00
__zdseg_1354:
    db 0x41, 0x45, 0x46, 0x47, 0x00
__zdseg_1359:
    db 0x41, 0x43, 0x00
__zdseg_135c:
    db 'SOUND35.SND', 0
__zdseg_1368:
    db 'EGHIK', 0
__zdseg_136e:
    db 'CEFGI', 0
__zdseg_1374:
    db 0x42, 0x43, 0x00
__zdseg_1377:
    db 'SOUND36.SND', 0
__zdseg_1383:
    db 0x45, 0x4a, 0x00
__zdseg_1386:
    db 0x43, 0x48, 0x00
__zdseg_1389:
    db 0x42, 0x43, 0x00
__zdseg_138c:
    db 'SOUND37.SND', 0
__zdseg_1398:
    db 0x47, 0x49, 0x4a, 0x00
__zdseg_139c:
    db 0x45, 0x47, 0x48, 0x00
__zdseg_13a0:
    db 0x43, 0x00
__zdseg_13a2:
    db 'SOUND38.SND', 0
__zdseg_13ae:
    db 0x48, 0x49, 0x4a, 0x00
__zdseg_13b2:
    db 0x46, 0x47, 0x48, 0x00
__zdseg_13b6:
    db 0x43, 0x00
__zdseg_13b8:
    db 'MON52.PIC', 0
__zdseg_13c2:
    db 0x49, 0x00
__zdseg_13c4:
    db 0x47, 0x00
__zdseg_13c6:
    db 0x43, 0x00
__zdseg_13c8:
    db 'MON53.PIC', 0
__zdseg_13d2:
    db 0x48, 0x49, 0x4a, 0x00
__zdseg_13d6:
    db 0x46, 0x47, 0x48, 0x00
__zdseg_13da:
    db 0x43, 0x00
__zdseg_13dc:
    db 'MON55.PIC', 0
__zdseg_13e6:
    db 0x4b, 0x00
__zdseg_13e8:
    db 0x49, 0x00
__zdseg_13ea:
    db 0x43, 0x00
__zdseg_13ec:
    db 'MON56.PIC', 0
__zdseg_13f6:
    db 0x4b, 0x00
__zdseg_13f8:
    db 0x49, 0x00
__zdseg_13fa:
    db 0x43, 0x00
__zdseg_13fc:
    db 'MON51.PIC', 0
__zdseg_1406:
    db 0x48, 0x49, 0x00
__zdseg_1409:
    db 0x46, 0x47, 0x00
__zdseg_140c:
    db 0x43, 0x00
__zdseg_140e:
    db 'MON54.PIC', 0
__zdseg_1418:
    db 0x4b, 0x00
__zdseg_141a:
    db 0x49, 0x00
__zdseg_141c:
    db 0x43, 0x00
__zdseg_141e:
    db 'MON57.PIC', 0
__zdseg_1428:
    db 0x4b, 0x00
__zdseg_142a:
    db 0x49, 0x00
__zdseg_142c:
    db 0x43, 0x00
__zdseg_142e:
    db 'MON58.PIC', 0
__zdseg_1438:
    db 0x47, 0x4b, 0x00
__zdseg_143b:
    db 0x45, 0x49, 0x00
__zdseg_143e:
    db 0x43, 0x00
__zdseg_1440:
    db 0x00
__zdseg_1441:
    db 0x00
__zdseg_1442:
    db 0x00
__zdseg_1443:
    db 0x00
__zdseg_1444:
    db 0x25, 0x63, 0x00, 0x20, 0x00, 0x20, 0x00
__zdseg_144b:
    db 0x20, 0x20, 0x20, 0x00
__zdseg_144f:

    db '                                                                               ', 0

__zdseg_149f:

    db '                                                                               ', 0

__zdseg_14ef:
    db 'SCENARIO.HDR', 0
__zdseg_14fc:

    db 'SYSTEM ERROR: UNABLE TO OPEN ', 0

__zdseg_151a:

    db ' - Press <RETURN>', 0

__zdseg_152c:

    db '*ERROR* INSTALL VERSION MISMATCH - Press <RETURN>', 0

__zdseg_155e:
    db 0x5c, 0x00
__zdseg_1560:
    db 'SAVEGAME.DBS', 0
__zdseg_156d:

    db '                                                                               ', 0

__zdseg_15bd:
    db 'Please Insert ', 0
__zdseg_15cc:
    db 'DESTINATION', 0
__zdseg_15d8:
    db '*SOURCE*', 0
__zdseg_15e1:
    db ' Disk (', 0
__zdseg_15e9:
    db ') Into Drive ', 0
__zdseg_15f7:

    db ' - Press <RETURN>', 0

__zdseg_1609:
    db 'pkunzip.exe', 0
__zdseg_1615:
    db 'pkunzip.exe', 0
__zdseg_1621:
    db 'pkunzip.exe ', 0
__zdseg_162e:
    db 0x20, 0x00
__zdseg_1630:
    db 0x6e, 0x75, 0x6c, 0x00
__zdseg_1634:
    db 0x61, 0x00
__zdseg_1636:
    db 0x63, 0x6f, 0x6e, 0x00
__zdseg_163a:
    db 0x61, 0x00
__zdseg_163c:

    db 'ERROR: UNABLE TO UNZIP -> ', 0

__zdseg_1657:

    db ' - Press <RETURN>', 0
    db 0x00, 0x20, 0x00

__zdseg_166c:
    db 0x41, 0x3a, 0x00
__zdseg_166f:
    db 0x42, 0x3a, 0x00
__zdseg_1672:
    db 0x41, 0x3a, 0x00
__zdseg_1675:
    db 0x00
__zdseg_1676:
    db 0x41, 0x3a, 0x00
__zdseg_1679:
    db 0x00
__zdseg_167a:
    db 0x41, 0x3a, 0x00
__zdseg_167d:
    db 0x00
__zdseg_167e:
    db 0x43, 0x3a, 0x00
__zdseg_1681:
    db 'DSAVANT', 0
__zdseg_1689:

    db 'ERROR: INVALID DESTINATION DRIVE -> (', 0

__zdseg_16af:

    db ') - Press <RETURN>', 0

__zdseg_16c2:

    db 'ERROR: UNABLE TO CREATE DIRECTORY -> ', 0

__zdseg_16e8:

    db ' - Press <RETURN>', 0

__zdseg_16fa:

    db 'ERROR: UNABLE TO LOCATE DIRECTORY -> ', 0

__zdseg_1720:

    db ' - Press <RETURN>', 0

__zdseg_1732:

    db '****************************************************', 0

__zdseg_1767:

    db '*                 W I Z A R D R Y                  *', 0

__zdseg_179c:

    db '*           CRUSADERS OF THE DARK SAVANT           *', 0

__zdseg_17d1:

    db '*               INSTALLATION PROGRAM    Ver#       *', 0

__zdseg_1806:

    db '****************************************************', 0

__zdseg_183b:
    db 0x2e, 0x00
__zdseg_183d:

    db 'Crusaders of the Dark Savant Application Software Copyright (C) 1992', 0

__zdseg_1882:

    db 'by David W. Bradley and Sir-Tech Software, Inc.', 0

__zdseg_18b2:

    db 'All Logos, Printed Materials and Graphic Designs Copyright (C) 1992', 0

__zdseg_18f6:

    db 'by Sir-Tech Software, Inc.', 0

__zdseg_1911:

    db 'All Rights Reserved. No part of this software or printed material may', 0

__zdseg_1957:

    db 'be reproduced in any way, or transmitted, in any form or by any means,', 0

__zdseg_199e:

    db 'electronic, mechanical, photocopying, recording, or otherwise without', 0

__zdseg_19e4:

    db 'prior permission in writing  from the publisher,  except by reviewers,', 0

__zdseg_1a2b:

    db 'who may quote brief written passages and/or screen images to be print-', 0

__zdseg_1a72:

    db 'ed in a magazine or newspaper.', 0

__zdseg_1a91:
    db 0x00
__zdseg_1a92:

    db 'Press <RETURN> to begin INSTALLATION PROCEDURE', 0

__zdseg_1ac1:

    db '****************************************************', 0

__zdseg_1af6:

    db '*                 W I Z A R D R Y                  *', 0

__zdseg_1b2b:

    db '*           CRUSADERS OF THE DARK SAVANT           *', 0

__zdseg_1b60:

    db '*               INSTALLATION PROGRAM               *', 0

__zdseg_1b95:

    db '****************************************************', 0

__zdseg_1bca:
    db 0x41, 0x3a, 0x00
__zdseg_1bcd:
    db 0x00
__zdseg_1bce:

    db '                       Disk Drive Type      Drive Name  Path or Drive #2    ', 0

__zdseg_1c1b:

    db '                    ----------------------  ----------  --------------------', 0

__zdseg_1c68:

    db '     SOURCE DRIVE:', 0

__zdseg_1c7b:

    db 'DESTINATION DRIVE:', 0

__zdseg_1c8e:

    db ' MEMORY EXPANSION>  EMS:      RamDisk:        RAM Name: ', 0

__zdseg_1cc7:

    db 'GRAPHIC MODE:                                     VIDEO ADJUSTMENT', 0

__zdseg_1d0a:

    db '                                                  ================', 0

__zdseg_1d4d:
    db '  Bright: ', 0
__zdseg_1d58:
    db 'Contrast: ', 0
__zdseg_1d63:
    db 'MOUSE: ', 0
__zdseg_1d6b:
    db 'SOUND: ', 0
__zdseg_1d73:

    db 'FULL INSTALL   CONFIG ONLY    ABORT INSTALL', 0

__zdseg_1d9f:

    db 'ARROW KEY TO FIELD - <RETURN> TO CHANGE', 0

__zdseg_1dc7:

    db '*ERROR* NO VIDEO CARD DETECTED - Press <RETURN>', 0

__zdseg_1df7:

    db 'UNABLE TO COMPLETE INSTALLATION - Press <RETURN>', 0

__zdseg_1e28:

    db 'ARROW KEY TO FIELD - <RETURN> TO CHANGE', 0

__zdseg_1e50:
    db 'FULL INSTALL', 0
__zdseg_1e5d:
    db 'CONFIG ONLY', 0
__zdseg_1e69:
    db 'ABORT INSTALL', 0
__zdseg_1e77:
    db 'FULL INSTALL', 0
__zdseg_1e84:
    db 'CONFIG ONLY', 0
__zdseg_1e90:

    db 'ABORT INSTALL', 0
    db '01110', 0

__zdseg_1ea4:

    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0

__zdseg_1ecd:

    db 'SOURCE PATH NOT ALLOWED - Press <RETURN>', 0
    db '00001', 0

__zdseg_1efc:

    db '                                 ', 0

__zdseg_1f1e:

    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0

__zdseg_1f47:

    db 'WARNING! DRIVE CONFLICT WITH SOURCE - Press <RETURN>', 0

__zdseg_1f7c:

    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0

__zdseg_1fa5:

    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0

__zdseg_1fce:

    db 'SOURCE AND DESTINATION DRIVE <MUST> DIFFER - Press <RETURN>', 0

__zdseg_200a:

    db 'Please specify a new SOURCE or DESTINATION Drive - Press <RETURN>', 0

__zdseg_204c:

    db '11 disks (5.25 @360k)', 0

__zdseg_2062:

    db '3 disks (5.25HD @1.2meg)', 0

__zdseg_207b:

    db '9 disks (3.5 @720k)', 0

__zdseg_208f:

    db '3 disks (3.5HD @1.44meg)', 0

__zdseg_20a8:
    db 0x00
__zdseg_20a9:

    db 'This Install requires ', 0

__zdseg_20c0:

    db ' - Press <RETURN>', 0

__zdseg_20d2:

    db 'Make sure you have NEWLY FORMATTED disks ready - Press <RETURN>', 0

__zdseg_2112:
    db 0x00
__zdseg_2113:
    db 0x00
__zdseg_2114:
    db 0x5c, 0x00
__zdseg_2116:
    db 0x5c, 0x00
__zdseg_2118:
    db 0x5c, 0x00
__zdseg_211a:
    db 0x5c, 0x00
__zdseg_211c:
    db 'CRUS01.ZIP', 0
__zdseg_2127:
    db 'CRUS01.ZIP', 0
__zdseg_2132:
    db 0x00
__zdseg_2133:
    db 'CRUS02.ZIP', 0
__zdseg_213e:
    db 0x00
__zdseg_213f:
    db 'CRUS04.ZIP', 0
__zdseg_214a:
    db 0x00
__zdseg_214b:
    db 'CRUS06.ZIP', 0
__zdseg_2156:
    db 0x00
__zdseg_2157:
    db 'CRUS03.ZIP', 0
__zdseg_2162:
    db 'CRUS03.ZIP', 0
__zdseg_216d:
    db 0x00
__zdseg_216e:
    db 'CRUS05.ZIP', 0
__zdseg_2179:
    db 0x00
__zdseg_217a:
    db 'CRUS07.ZIP', 0
__zdseg_2185:
    db 0x00
__zdseg_2186:
    db 'CRUS08.ZIP', 0
__zdseg_2191:
    db 0x00
__zdseg_2192:
    db 'CRUS07.ZIP', 0
__zdseg_219d:
    db 0x00
__zdseg_219e:
    db 'CRUS02.ZIP', 0
__zdseg_21a9:
    db 'CRUS02.ZIP', 0
__zdseg_21b4:
    db 0x00
__zdseg_21b5:
    db 'CRUS04.ZIP', 0
__zdseg_21c0:
    db 0x00
__zdseg_21c1:
    db 'CRUS06.ZIP', 0
__zdseg_21cc:
    db 0x00
__zdseg_21cd:
    db 'CRUS03.ZIP', 0
__zdseg_21d8:
    db 'CRUS03.ZIP', 0
__zdseg_21e3:
    db 0x00
__zdseg_21e4:
    db 'CRUS08.ZIP', 0
__zdseg_21ef:
    db 0x00
__zdseg_21f0:
    db 'CRUS05.ZIP', 0
__zdseg_21fb:
    db 'CRUS05.ZIP', 0
__zdseg_2206:
    db 0x00
__zdseg_2207:
    db 'CRUS02.ZIP', 0
__zdseg_2212:
    db 0x00
__zdseg_2213:
    db 'CRUS06.ZIP', 0
__zdseg_221e:
    db 0x00
__zdseg_221f:
    db 'CRUS03.ZIP', 0
__zdseg_222a:
    db 'CRUS03.ZIP', 0
__zdseg_2235:
    db 0x00
__zdseg_2236:
    db 'CRUS04.ZIP', 0
__zdseg_2241:
    db 0x00
__zdseg_2242:
    db 'CRUS07.ZIP', 0
__zdseg_224d:
    db 0x00
__zdseg_224e:
    db 'CRUS08.ZIP', 0
__zdseg_2259:
    db 0x00
__zdseg_225a:
    db 'CRUS05.ZIP', 0
__zdseg_2265:
    db 'CRUS05.ZIP', 0
__zdseg_2270:
    db 0x00
__zdseg_2271:
    db 'SCENARIO.HDR', 0
__zdseg_227e:

    db 'UNABLE TO COMPLETE INSTALLATION - Press <RETURN>', 0

__zdseg_22af:

    db 'CRUSADERS OF THE DARK SAVANT INSTALLATION COMPLETE!', 0

__zdseg_22e3:

    db 'To Play The Game, Type: WIZARDRY <cr>', 0
    db 0x00, 0x2e, 0x00, 0x2e, 0x00

