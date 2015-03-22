HOOD - Human Odometry Outdoor Data Set
--------------------------------------


1. What is it?
--------------
HOOD - Human Odometry Outdoor Data Set is a public collection of labelled
accelerometer and gyroscope data recordings to be used for the design and validation
of Human Odometry (HO) systems. HOOD is specifically designed to address
the following questions:
- which is the optimal sensor placement for a HO system?
- what is the performance of human odometry algorithms for uncommon motions such
  as crawling and slithering?
- what is the performance of human odometry algorithms for uncommon grounds such
  as river bed, woods and snow?
- is it possible to design a single, robust and inexpensive HO system that can
  reliably reconstruct the followed path for different motion types and path
  configurations, based on accelerometer and gyroscope information exclusively?

HOOD is composed of 168 recordings of accelerometer and gyroscope data collected
from one volunteer and referring to the combinations of 6 motion types (slow walking,
normal walking, running, slow crawling, fast crawling, slithering), 6 outdoor
environments (grass field, uphill road, staircase, river bed, woods, snow), 4 sensor
placements (foot, waist, wrist, chest) and 2 different path configurations (straight
line, zig-zag).

An article describing the dataset is currently under submission at IROS 2015.


2. Version
----------
Version: 2.0

Released on: 17/03/2015

2.1. Version history
--------------------
17/03/2015:    version 2.0 is published, with an extended dataset

25/11/2014:    version 1.1 is published, with clearer data organization

28/09/2014:    version 1.0 is published


3. Documentation
----------------
Up-to-date documentation for this release is provided in the file MANUAL.pdf


4. Installation & usage
-----------------------
This dataset does not require any installation.

The provided MATLAB script "viewRawData.m" allows for visualization of the recorded
accelerometer data. A description and example usage of the script can be
accessed within MATLAB environment with the command:
        help viewRawData

The provided MATLAB script has been developed and tested with MATLAB R2013b.


5. Licensing
------------
This dataset is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY, including the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. The authors allow the users of the "HOOD - Human Odometry
Outdoor Data Set" to use and modify it for their own research. Any commercial
application, redistribution, etc... has to be arranged between users and authors
individually.

For further license information, please contact the authors.


6. Authors contacts
-------------------
If you want to be informed about dataset updates and new code releases,
obtain further information about the provided dataset, or contribute to its
development please write to:

- Barbara Bruno,
  dept. DIBRIS,
  Università degli Studi di Genova (Italy)
  barbara.bruno@unige.it

- Fulvio Mastrogiovanni,
  dept. DIBRIS,
  Università degli Studi di Genova (Italy)
  fulvio.mastrogiovanni@unige.it

- Antonio Sgorbissa,
  dept. DIBRIS,
  Università degli Studi di Genova (Italy)
  antonio.sgorbissa@unige.it

Barbara Bruno, Fulvio Mastrogiovanni and Antonio Sgorbissa are with DIBRIS
(Department of Computer Engineering, Bioengineering, Robotics and Systems
Engineering) at the University of Genova, via Opera Pia 13, 16145, Genova, Italia