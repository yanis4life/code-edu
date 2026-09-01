import json
import os
import io
from PIL import Image, ImageOps


MAX_AVATAR_SIZE = (256, 256)
AVATAR_QUALITY = 80
SUPPORTED_FORMATS = {
    "image/jpeg": "JPEG",
    "image/png": "PNG",
    "image/webp": "WEBP",
    "image/gif": "GIF"
}


def process_avatar(image_data, target_format="image/webp"):
    try:
        img = Image.open(io.BytesIO(image_data))
        img = ImageOps.exif_transpose(img)

        img.thumbnail(MAX_AVATAR_SIZE, Image.Resampling.LANCZOS)

        if img.mode in ("RGBA", "P"):
            img = img.convert("RGBA")
        else:
            img = img.convert("RGB")

        output_format = SUPPORTED_FORMATS.get(target_format, "WEBP")

        output = io.BytesIO()
        img.save(output, format=output_format, quality=AVATAR_QUALITY, optimize=True)
        output.seek(0)

        return {
            "data": output.getvalue(),
            "mime_type": target_format,
            "width": img.width,
            "height": img.height,
            "size": len(output.getvalue())
        }
    except Exception as e:
        return {"error": str(e)}


def crop_avatar(image_data, x, y, width, height, target_format="image/webp"):
    try:
        img = Image.open(io.BytesIO(image_data))
        img = ImageOps.exif_transpose(img)

        cropped = img.crop((x, y, x + width, y + height))
        cropped.thumbnail(MAX_AVATAR_SIZE, Image.Resampling.LANCZOS)

        if cropped.mode in ("RGBA", "P"):
            cropped = cropped.convert("RGBA")
        else:
            cropped = cropped.convert("RGB")

        output_format = SUPPORTED_FORMATS.get(target_format, "WEBP")

        output = io.BytesIO()
        cropped.save(output, format=output_format, quality=AVATAR_QUALITY, optimize=True)
        output.seek(0)

        return {
            "data": output.getvalue(),
            "mime_type": target_format,
            "width": cropped.width,
            "height": cropped.height,
            "size": len(output.getvalue())
        }
    except Exception as e:
        return {"error": str(e)}


def validate_image(image_data, max_size=5*1024*1024):
    errors = []

    if len(image_data) > max_size:
        errors.append(f"Image too large. Max size: {max_size} bytes")

    try:
        img = Image.open(io.BytesIO(image_data))
        img.verify()
    except Exception:
        errors.append("Invalid image file")

    return errors


if __name__ == "__main__":
    print("Image processor module loaded successfully")