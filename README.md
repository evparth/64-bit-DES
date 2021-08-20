# 64-bit-DES

The structure of the Data Encryption Standard algorithm is a modified form of the Feistel Network .

The system consists of clock, asynchronous reset, 64-bit plaintext, key and ciphertext as output.

Signals:

key_mem : Register space where the internal keys are stored after their production.
des_meml,des_memr : Registers used for controlling the products after every DES round.
DataEnable : Control Signal of the FSM that enables the processing of plaintext.
KeyReady : Control Signal of the FSM for the KPU in order to produce keys
DesReady : Control Signal of the FSM for the Basicdes component

Inserted plaintext:

![image](https://user-images.githubusercontent.com/89205152/130221203-2705b2f7-6538-4817-adb0-47f218e2ffe6.png)

Inserted key:

![image](https://user-images.githubusercontent.com/89205152/130221193-88b16e26-bcd8-4ca8-8356-a5ad86188684.png)

Expected output:

![image](https://user-images.githubusercontent.com/89205152/130221081-b3911ea5-e069-4872-a101-faffb1b3cd20.png)


For more information check the readme.png where you can find block diagrams of the project.
