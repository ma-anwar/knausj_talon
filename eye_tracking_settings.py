from talon import app
from talon.track.geom import point2d
from talon_plugins import speech, eye_mouse, eye_zoom_mouse
#if app.platform == 'mac':
#    eye_zoom_mouse.config.screen_area = point2d(100, 75)
#    eye_zoom_mouse.config.img_scale = 6
#elif app.platformh == 'win':
#    eye_zoom_mouse.config.screen_area = point2d(200, 150)
#    eye_zoom_mouse.config.img_scale = 4.5
eye_zoom_mouse.config.screen_area = point2d(100, 150)
eye_zoom_mouse.config.img_scale = 89



