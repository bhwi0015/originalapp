document.addEventListener('DOMContentLoaded', function(){
 if ( document.getElementById('post_video')){

  const VideoUpload = document.getElementById('upload-video');

  const createVideoHTML = (blob) => {

      const videoElement = document.createElement('div');

      const blobVideo = document.createElement('video');
      blobVideo.setAttribute('src', blob);

      videoElement.appendChild(blobVideo);
      VideoUpload.appendChild(videoElement);
    };

  document.getElementById('post_video').addEventListener('change', function(e){

      const videoContent = document.querySelector('video');
      if (videoContent){
        videoContent.remove();
      }
      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);

      createVideoHTML(blob);

    });
   }
});
