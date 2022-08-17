FROM nvidia/cuda:10.2-devel-ubuntu18.04

ARG OPENCV_VERSION=3.4.11

RUN apt-get update && apt-get upgrade -y
    # Install build tools, build dependencies and python
RUN apt-get install -y python-pip
RUN apt-get install -y build-essential
RUN apt-get install -y git
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN apt-get install -y yasm
#RUN apt-get install -y pkg-config
RUN apt-get install -y libswscale-dev
RUN apt-get install -y libxml2-dev
RUN apt-get install -y libtbb2
RUN apt-get install -y libtbb-dev
RUN apt-get install -y libjpeg-dev
RUN apt-get install -y libturbojpeg
RUN apt-get install -y libpng-dev
RUN apt-get install -y libtiff-dev
RUN apt-get install -y libavformat-dev
RUN apt-get install -y libpq-dev
RUN apt-get install -y libxine2-dev
RUN apt-get install -y libglew-dev
RUN apt-get install -y libtiff5-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libjpeg-dev
RUN apt-get install -y libavcodec-dev
RUN apt-get install -y libavformat-dev
RUN apt-get install -y libavutil-dev
RUN apt-get install -y libpostproc-dev
RUN apt-get install -y libswscale-dev
RUN apt-get install -y libeigen3-dev
RUN apt-get install -y libtbb-dev
RUN apt-get install -y libgtk2.0-dev
RUN apt-get install -y libeigen3-dev
RUN apt-get install -y libceres-dev
RUN apt-get install -y libgflags-dev
RUN apt-get install -y libgoogle-glog-dev
#RUN apt-get install -y pkg-config
        ## Python
RUN apt-get install -y python-dev
RUN apt-get install -y python-numpy
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-numpy && rm -rf /var/lib/apt/lists/*

#RUN apt install -y libssl-dev
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y libcurl4-openssl-dev

RUN apt update -y && apt install -y snapd
RUN wget https://github.com/Kitware/CMake/releases/download/v3.15.2/cmake-3.15.2.tar.gz
RUN tar -zxvf cmake-3.15.2.tar.gz && cd cmake-3.15.2 && ./bootstrap --system-curl && make && make install
#RUN systemctl unmask snapd.service
#RUN systemctl enable snapd.service
#RUN systemctl start snapd.service
#RUN apt-get install snapd
#RUN apt-get install -y notes
#RUN snap install cmake --classic

#RUN echo java --version
#RUN apt-get install -y default-jdk

#RUN yum -y remove java***
#RUN apt-get install -y jdk-8u212-linux-x64.rpm && \
#    echo "JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")" | tee -a /etc/profile && source /etc/profile && echo $JAVA_HOME && \
#    rm jdk-8u212-linux-x64.rpm && \ 
#    alternatives --set java /usr/java/jdk1.8.0_212-amd64/jre/bin/java

RUN cd /opt/ &&\
    # Download and unzip OpenCV and opencv_contrib and delte zip files
    wget https://github.com/opencv/opencv/archive/$OPENCV_VERSION.zip &&\
    unzip $OPENCV_VERSION.zip &&\
    rm $OPENCV_VERSION.zip &&\
    wget https://github.com/opencv/opencv_contrib/archive/$OPENCV_VERSION.zip &&\
    #git https://github.com/opencv/opencv_contrib.git
    unzip ${OPENCV_VERSION}.zip &&\
    rm ${OPENCV_VERSION}.zip &&\
    # Create build folder and switch to it
    mkdir -p /opt/opencv-${OPENCV_VERSION}/build && cd /opt/opencv-${OPENCV_VERSION}/build &&\

    #wget https://raw.githubusercontent.com/opencv/opencv_3rdparty/34e4206aef44d50e6bbcd0ab06354b52e7466d26/boostdesc_bgm.i &&\ 
    #mv boostdesc_bgm.i /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/src &&\

    #wget https://raw.githubusercontent.com/opencv/opencv_3rdparty/34e4206aef44d50e6bbcd0ab06354b52e7466d26/boostdesc_bgm_hd.i &&\
    #mv boostdesc_bgm_hd.i /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/src &&\

    #wget https://raw.githubusercontent.com/opencv/opencv_3rdparty/34e4206aef44d50e6bbcd0ab06354b52e7466d26/boostdesc_bgm_bi.i &&\
    #mv boostdesc_bgm_bi.i /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/src &&\

    #wget https://raw.githubusercontent.com/opencv/opencv_3rdparty/34e4206aef44d50e6bbcd0ab06354b52e7466d26/boostdesc_lbgm.i &&\
    #mv boostdesc_lbgm.i /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/src &&\

    #wget https://raw.githubusercontent.com/opencv/opencv_3rdparty/34e4206aef44d50e6bbcd0ab06354b52e7466d26/boostdesc_binboost_064.i &&\
    #mv boostdesc_binboost_064.i /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/src &&\

    #wget https://raw.githubusercontent.com/opencv/opencv_3rdparty/34e4206aef44d50e6bbcd0ab06354b52e7466d26/boostdesc_binboost_128.i &&\
    #mv boostdesc_binboost_128.i /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/src &&\

    #wget https://raw.githubusercontent.com/opencv/opencv_3rdparty/34e4206aef44d50e6bbcd0ab06354b52e7466d26/boostdesc_binboost_256.i &&\
    #mv boostdesc_binboost_256.i /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/src &&\

    #wget https://raw.githubusercontent.com/opencv/opencv_3rdparty/fccf7cd6a4b12079f73bbfb21745f9babcd4eb1d/vgg_generated_120.i &&\    
    #mv vgg_generated_120.i /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/src &&\

    #wget https://raw.githubusercontent.com/opencv/opencv_3rdparty/fccf7cd6a4b12079f73bbfb21745f9babcd4eb1d/vgg_generated_64.i &&\
    #mv vgg_generated_64.i /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/src &&\

    #wget https://raw.githubusercontent.com/opencv/opencv_3rdparty/fccf7cd6a4b12079f73bbfb21745f9babcd4eb1d/vgg_generated_48.i &&\
    #mv vgg_generated_48.i /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/src &&\

    #wget https://raw.githubusercontent.com/opencv/opencv_3rdparty/fccf7cd6a4b12079f73bbfb21745f9babcd4eb1d/vgg_generated_80.i &&\
    #mv vgg_generated_80.i /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/src &&\
    
    #cp -r /opt/opencv-${OPENCV_VERSION}/modules/features2d/* /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/test/ &&\

    #cp /opt/opencv-${OPENCV_VERSION}/modules/java/generator/src/cpp/common.h /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/test/misc/java/src/cpp/ &&\

    #cp -r /opt/opencv-${OPENCV_VERSION}/modules/java/generator/src/cpp/* /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/test/misc/java/src/cpp/ &&\
    
    #cp /opt/opencv-${OPENCV_VERSION}/modules/feature2d /opt/opencv_contrib-${OPENCV_VERSION}/modules/xfeatures2d/test/ &&\
    # Cmake configure
    cmake \
        -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib-${OPENCV_VERSION}/modules \
        #-DWITH_CUDA=ON \
        -D CMAKE_BUILD_TYPE=RELEASE \
        # Install path will be /usr/local/lib (lib is implicit)
        #-D CMAKE_INSTALL_PREFIX=/usr/local \
	#-D BUILD_SHARED_LIBS=OFF \
	#-D INSTALL_C_EXAMPLE=ON \
	#-D INSTALL_PYTHON_EXAMPLES=ON \
	#-D WITH_TBB=ON \
	#-D WITH_V4L=ON \
	#-D OPENCV_PYTHON3_INSTALL_PATH=$cwd/OpenCV-${OPENCV_VERSION}-py3/lib/python3.5/site-packages \
	-D OPENCV_ENABLE_NONFREE=ON .. && \
	#&&\
    # Make
    #make -j"$(nproc)" && \
    make -j &&\
    # Install to /usr/local/lib
    make install
    #ldconfig &&\
    # Remove OpenCV sources and build folder
    #rm -rf /opt/opencv-${OPENCV_VERSION} && rm -rf /opt/opencv_contrib-${OPENCV_VERSION}
CMD ls && /bin/bash
