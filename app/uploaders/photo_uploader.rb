class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # Remove everything else

  version :bright_face do
    cloudinary_transformation effect: "brightness:30", radius: 20,
      width: 30, height: 30, crop: :thumb, gravity: :face
  end

end
