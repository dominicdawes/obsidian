
Information Needed

> sensor physical offsets form each other
> sensor horizontal field of view (HFOV)
> sensor focal length
> sensor output resolution (w x h)


![[UTF thermal data collect dims.png]]
## Visual setup

![[UTF thermal data collect FOV and focal len.png]]


## Math theory

ask claude


## Example Code

```python
def calculate_camera_transform():

    """Calculate the transformation parameters based on camera specifications.

    Camera Specs

    Intel RealSense d455
        Resolution @ fps: 1280 x 720 @ 30fps
        Focal length : 1.88 mm
        Field of view : FOV (H x V): 90° x 65°

    FLIR Boson+:
        Resolution @ fps: 640 x 512 @ 60fps
        Focal length : 18 mm
        Field of view : 24° FOV
    """

  

    # === Camera specifications === #

    realsense_hfov = math.radians(CAMERA_SPECS['rs_fov'])  # degrees --> radians
    boson_hfov = math.radians(CAMERA_SPECS['boson_fov'])    # degrees --> radianss
    realsense_focal = CAMERA_SPECS['rs_focal_len']  # mm
    boson_focal = CAMERA_SPECS['boson_focal_len']      # mm
    physical_offset_x = 98.20  # mm
    physical_offset_y = 3.36   # mm

    # Calculate angular offset
    angle_offset_x = math.atan(physical_offset_x / boson_focal)
    angle_offset_y = math.atan(physical_offset_y / boson_focal)

    # Calculate pixel densities
    realsense_density = CAMERA_SPECS['rs_res_width'] / realsense_hfov
    boson_density = CAMERA_SPECS['rs_res_height'] / boson_hfov

    # Calculate scale factor based on FOV and resolution differences
    scale_factor = (boson_hfov / realsense_hfov) * (CAMERA_SPECS['rs_res_width'] / CAMERA_SPECS['boson_res_width'])

    # Calculate pixel offsets
    pixel_offset_x = angle_offset_x * realsense_density
    pixel_offset_y = angle_offset_y * realsense_density

    return scale_factor, pixel_offset_x, pixel_offset_y
```