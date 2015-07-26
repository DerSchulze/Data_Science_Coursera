Study Design and data processing
================================

Collection of the raw data
--------------------------

The data was collected by Jorge L. Reyes-Ortiz, Davide Anguita,
Alessandro Ghio, Luca Oneto and Xavier Parra via a video-taped
experiment with 30 participants. The participants had to performe six
acitivities wearing a smartphone on their waist. The research team
recordet 3-axial linear accelation and 3.axial angular velocity at a
constant rate of 50Hz. The participants where splitted in a test-group
(30 %) and a train-group (70 %). The data was processed by appling nose
filters and sampled in 2.56 sec. windows. Finally the data was
normalized within [-1,1]

For further information on the collection and procession of the raw data
please refere to:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

The "run\_analysis.txt" Dataset
===============================

How to create the tidy dataset
------------------------------

Just put the run\_analysis.R file and the "UCI HAR Dataset" folder with
the raw data in your workspace and perform the r-script.

A description on the functionality of the script can be found in the
"ReadMe.md".

Describtion of the variables
----------------------------

### Variable No. 1

The first variable refers to the subject that participated in the
experiment. It ranges from 1 to 30.

### Variable No. 2

The second variable refers to the acitivity for which the other
variables are measured.

### Group-Means-Variables 3-81

The variables 3-81 represent the average of every mean- and standard
derivation-measurement for each activity and subject.

These variables have describtive names. In the following the meaning of
each string is presented in chronological order:

<table>
<thead>
<tr class="header">
<th align="left">String</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Group_Mean_</td>
<td align="left">The prefix &quot;Group_Mean_&quot; refers on the fact that each variable represents the average of the measurement for each subject and individual.</td>
</tr>
<tr class="even">
<td align="left">&quot;t&quot; or &quot;f&quot;</td>
<td align="left">The &quot;t&quot; prefix refers to time-domain signals and the &quot;f&quot; prefix tells that the data was processed via a Fast Fourier Transform (FFT).</td>
</tr>
<tr class="odd">
<td align="left">&quot;Body&quot; or &quot;Gravity&quot;</td>
<td align="left">The &quot;Body&quot; string indicates the body signal whereas the &quot;Gravity&quot; string represents the gravity signal.</td>
</tr>
<tr class="even">
<td align="left">&quot;Acc&quot; or &quot;Gyro&quot;</td>
<td align="left">These strings indicates wheter the signal was captured via the accelerometer (&quot;Acc&quot;) or the gyroscope (&quot;Gyro&quot;).</td>
</tr>
<tr class="odd">
<td align="left">&quot;Jerk&quot;</td>
<td align="left">The &quot;Jerk&quot; string indicates that the body linear acceleration and angular velocity were derived in time to obtain Jerk-Signals.</td>
</tr>
<tr class="even">
<td align="left">&quot;Mag&quot;</td>
<td align="left">Mag stands for the magnitude. These magnitudes were calculated using the Euclidean norm.</td>
</tr>
<tr class="odd">
<td align="left">&quot;mean()&quot;, &quot;std()&quot;, &quot;meanFreq()&quot;</td>
<td align="left">These strings indicate that these values were estimated from the original signals and represents the mean (&quot;mean()&quot;), the standard derivation (&quot;std()&quot;) or the mean frequency (&quot;meanFreq()&quot;) of these values.</td>
</tr>
<tr class="even">
<td align="left">&quot;-X&quot;, &quot;-Y&quot;, &quot;-Z&quot;</td>
<td align="left">This last sufix denotes the direction of the 3-axial-signal.</td>
</tr>
</tbody>
</table>

Sources
=======

For further (more technological) description please refere to the
original dataset and descrition:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L.
Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition
Using Smartphones. 21th European Symposium on Artificial Neural
Networks, Computational Intelligence and Machine Learning, ESANN 2013.
Bruges, Belgium 24-26 April 2013.
