#����ͷ�ͨ�Űิ��
#ҳ��ͷ����ġ�>Ա���Ű༰�󶨣����г���
import pyautogui
import time
i = 0
while True:
    print(i)
    i = i + 1
    if i == 100:
        break
    time.sleep(3)
    pyautogui.moveTo(453,257)
    pyautogui.mouseDown()
    pyautogui.mouseUp()
    time.sleep(1)
    pyautogui.moveTo(771,257)
    pyautogui.mouseDown()
    pyautogui.mouseUp()
    time.sleep(1)
    pyautogui.moveTo(604,800)
    pyautogui.mouseDown()
    pyautogui.mouseUp()
    

print "Work Done!"
