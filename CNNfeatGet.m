
%   深度特征提取 ------------------------------------------------- Based on VGGNet-19
%   读取图片：
    video_path = 'C:\Users\Realwhisky\Desktop\Matlab deepfeature extraction\0085.jpg';
%************************************************************************************************
    Layerschoice = [37, 28, 19];
%************************************************************************************************
    addpath('external');
    addpath('vlfeat-0.9.20');
    
    global enableGPU;
    enableGPU = false;
    
%************************************************************************************************
    im = imread(video_path);
    
%************************************************************************************************
    feat  = tidy_features(im, Layerschoice); 
                
    conv_1=(feat{1}); 
    conv_2=(feat{2});
    conv_3=(feat{3});  
%************************************************************************************************