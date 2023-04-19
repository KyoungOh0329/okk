
import cv2

video = cv2.VideoCapture('/Users/mazoola12/Downloads/IMG_1586.MOV')

length = int(video.get(cv2.CAP_PROP_FRAME_COUNT))
width = int(video.get(cv2.CAP_PROP_FRAME_WIDTH))
height = int(video.get(cv2.CAP_PROP_FRAME_HEIGHT))
fps = video.get(cv2.CAP_PROP_FPS)

print("length :", length)
print("width :", width)
print("height :", height)
print("fps :", fps)

count = 0

while (video.isOpened()):
    ret, image = video.read()

    if (int(video.get(1)) % 21 == 0):
        print('Saved frame number : ' + str(int(video.get(1))))
        count_str = format(count, '06')
        cv2.imwrite("/Users/mazoola12/Downloads/cut_frame/frame_%s.PNG" % count_str, image)
        count += 1

video.release()