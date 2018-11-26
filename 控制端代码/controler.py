# coding:utf-8
import serial.tools.list_ports
from pynput.keyboard import Controller, Key, Listener
import threading, time
import os

ser = None


class Ser(object):
    def __init__(self, port_name):
        try:
            self.port = serial.Serial(port=port_name, bytesize=8, stopbits=1, timeout=2)
        except Exception:
            print("failed to open the port.")
            os._exit(0)

    def send_cmd(self, cmd):
        self.port.write(cmd.encode())



def print_msg():
    print("ZZ51单片机小车控制端   --by betterme")
    print("按住对应按键控制小车")
    print("W->前进  S->后退  J->左转  L->右转")
    print("I->加速  K->减速  H->帮助  C->清屏")


def clear():
    os.system("cls")

def print_rec(ser):
    data = ser.port.read_all()
    if data != '':
        print(data)

def on_press(key):
    """
键盘按下函数
    :param key:
    :return: 没有异常发生时返回按下字符,否则返回空
    """
    try:
        key_value = format(key.char).lower()
        if key_value == 'w':  # 前进
            ser.send_cmd('f')
        elif key_value == 's':  # 后退
            ser.send_cmd('b')
        elif key_value == 'd':  # 停止
            ser.send_cmd('s')
        elif key_value == 'j':  # 左转
            ser.send_cmd('l')
        elif key_value == 'l':  # 右转
            ser.send_cmd('r')
        elif key_value == 'i':  # 加速
            ser.send_cmd('a')
        elif key_value == 'k':  # 减速
            ser.send_cmd('d')
        elif key_value == 'h':  # 帮助
            print_msg()
        elif key_value == 'c':  # 清屏
            clear()
    except AttributeError:
        return


def start_keyboard_listen():
    """
开始键盘监听
    """
    with Listener(on_press=on_press, on_release=on_press) as listener:
        listener.join()


# def start_port_rec_listen():
#     with threading.Thread(target=print_rec(ser)) as t:
#         t.start()
#         t.join()


def main():
    print_msg()
    port_list = serial.tools.list_ports.comports()
    if len(port_list) <= 0:
        print("没有可用的串口")
    else:
        print("下面的串口可以被打开")
        i = 0
        for port in port_list:
            i += 1
            print(str(i) + " :", end='')
            print(port)
        serial_num = int(input("输入要打开串口的序号："))
        serial_info = port_list[serial_num - 1]
        port_name = serial_info[0]
        global ser
        ser = Ser(port_name)
        if (ser.port.isOpen()):
            print("succeed to open " + port_name)
            kb = Controller()
            # start_port_rec_listen()
            start_keyboard_listen()
        else:
            print("failed to open " + port_name)


if __name__ == '__main__':
    main()
