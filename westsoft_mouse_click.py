#西软客房通排班复制
#页面客房中心—>员工排班及绑定，运行程序
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
