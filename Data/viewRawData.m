function [ax ay az gx gy gz] = viewRawData(trial)
% function viewRawData(trial)
%
% viewRawData plots the acceleration and angular velocity recorded in the
% given trial of HOOD (Human Odometry Outdoor Dataset).
% Sensor data are decoded.
%
% Input:
%   trial --> name of the HOOD trial to be displayed
%
% Output:
%   ax ---> acceleration measured along x axis of the accelerometer [m/s^2]
%   ay ---> acceleration measured along y axis of the accelerometer [m/s^2]
%   az ---> acceleration measured along z axis of the accelerometer [m/s^2]
%   gx ---> ang. velocity measured about x axis of the gyroscope [deg/s]
%   gy ---> ang. velocity measured about y axis of the gyroscope [deg/s]
%   gz ---> ang. velocity measured about z axis of the gyroscope [deg/s]
%
% Example:
%   trial = 't01.txt';
%   viewRawData(trial);

% define IMU constants
GRAVITY = 9.80665;
CODED_RANGE = 65536;
ACC_RANGE = 4*GRAVITY;
GYRO_RANGE = 500;

% retrieve the IMU data from the file
IMUdata = dlmread(trial);

% map accelerometer data from CODED_RANGE to ACC_RANGE
ax = (IMUdata(:,1)/CODED_RANGE)*(ACC_RANGE);
ay = (IMUdata(:,2)/CODED_RANGE)*(ACC_RANGE);
az = (IMUdata(:,3)/CODED_RANGE)*(ACC_RANGE);

% map gyroscope data from CODED_RANGE to GYRO_RANGE
gx = (IMUdata(:,4)/CODED_RANGE)*(GYRO_RANGE);
gy = (IMUdata(:,5)/CODED_RANGE)*(GYRO_RANGE);
gz = (IMUdata(:,6)/CODED_RANGE)*(GYRO_RANGE);

% plot the IMU data
numSamples = length(ax);
time = 1:1:numSamples;
figure
    % display the raw acceleration data
    subplot(2,1,1);
    plot(time,ax,'r');
	hold on;
	plot(time,ay,'g');
	hold on;
	plot(time,az,'b');
    title('Accelerometer data');
	legend('ax','ay','az',3);
    axis([0 numSamples -ACC_RANGE/2 +ACC_RANGE/2]);
    % display the raw gyroscope data
    subplot(2,1,2);
	plot(time,gx,'r');
	hold on;
	plot(time,gy,'g');
	hold on;
	plot(time,gz,'b');
    title('Gyroscope data');
	legend('gx','gy','gz',3);
    axis([0 numSamples -GYRO_RANGE/2 +GYRO_RANGE/2]);
