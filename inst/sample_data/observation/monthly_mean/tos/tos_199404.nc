CDF      
      	longitude         latitude      time             CDI       GClimate Data Interface version 1.6.3 (http://code.zmaw.de/projects/cdi)    Conventions       CF-1.0     history      �Thu Jul 16 19:59:51 2015: ncrename -O -v lat,latitude -d lat,latitude -v lon,longitude -d lon,longitude -v .lev,ensemble -d .lev,ensemble -d .reftime,time /home/nmanubens/s2dverification/inst/sample_data/observation/monthly_mean/tos/tos_199404.nc
Thu Jul 16 19:59:50 2015: cdo remapcons,r16x8 -selname,tos /cfu/data/noaa/ersstv3b/monthly_mean/tos/tos_199404.nc /home/nmanubens/s2dverification/inst/sample_data/observation/monthly_mean/tos/tos_199404.nc
Wed May 15 15:19:01 2013: ncrename -d lat,latitude -v lat,latitude /cfu/data/noaa/ersstv3b/tmp/tos_new/tos_199404.nc
Wed May 15 15:19:01 2013: ncrename -d lon,longitude -v lon,longitude /cfu/data/noaa/ersstv3b/tmp/tos_new/tos_199404.nc
Wed May 15 15:19:01 2013: cdo selmon,4 tos_1994.nc /cfu/data/noaa/ersstv3b/tmp/tos_new/tos_199404.nc
Wed May 15 15:19:00 2013: cdo selyear,1994 unpacked_sst.mnmean.nc tos_1994.nc
Wed May 15 15:14:48 2013: ncks -O -v tos unpacked_sst.mnmean.nc unpacked_sst.mnmean.nc
Wed May 15 15:14:48 2013: ncrename -v sst,tos unpacked_sst.mnmean.nc
Wed May 15 15:13:37 2013: cdo addc,273.15 sst.mnmean.nc unpacked_sst.mnmean.nc
Thu Jul  1 14:03:49 2010: ncatted -O -a _FillValue,sst,o,s,32767 sst.mnmean.v3b.nc
created 09/2007 by CAS       institution       )NOAA/NESDIS/National Climatic Data Center      title         $NOAA Extended Reconstructed SST V3b    comments     �The extended reconstructed sea surface temperature (ERSST)
was constructed using the most recently available 
Comprehensive Ocean-Atmosphere Data Set (COADS) SST data 
and improved statistical methods that allow stable 
reconstruction using sparse data.
Currently, ERSST version 2 (ERSST.v2) and version 3 (ERSST.v3) and ERSST.v3b) are available from NCDC.
ERSST.v3b is an improved extended reconstruction over version 2.
 but with no satellite data      platform      Model      
references        {http://www.ncdc.noaa.gov/oa/climate/research/sst/ersstv3.php
http://www.esrl.noaa.gov/psd/data/gridded/data.noaa.ersst.html    citation     �Smith, T.M., R.W. Reynolds, Thomas C. Peterson, and Jay Lawrimore 2007: Improvements to NOAA's Historical Merged Land-Ocean Surface Temperature Analysis (1880-2006). In press. Journal of Climate (ERSSTV3).
Smith, T.M., and R.W. Reynolds, 2003: Extended Reconstruction of Global Sea Surface Temperatures Based on COADS Data (1854-1997). Journal of Climate, 16, 1495-1510. ERSSTV1
 Smith, T.M., and R.W. Reynolds, 2004: Improved Extended Reconstruction of SST (1854-1997). Journal of Climate, 17, 2466-2477.      NCO       	20130515       CDO       HClimate Data Operators version 1.6.3 (http://code.zmaw.de/projects/cdo)          	longitude                   standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X         �  �   latitude               standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         @  \   time               standard_name         time   units         days since 1800-01-01 00:00:00     calendar      standard        �   tos                       	long_name         (Monthly Means of Sea Surface Temperature   
_FillValue        D4{   missing_value         D4{   unpacked_valid_range      �      @D         	precision               least_significant_digit             var_desc      Sea Surface Temperature    dataset       $NOAA Extended Reconstructed SST V3b    
level_desc        Surface    	statistic         Mean   parent_stat       Mean        �        @6�     @F�     @P�     @V�     @\      @`�     @c�     @f�     @iP     @l      @n�     @p�     @rH     @s�     @u     �S�     �L      �@�     �&�     @&�     @@�     @L      @S�     @�R0    C��C��8C�%wC��HC��RD4{D4{C��xC��5C��C���C� �C�!�C�@C��BC��VC�ȁC��9C��C��C�4cC�x�C��C��WC�4C���C���C�ַC��C��,C���C�;C���C��C��sC��?C�&C���C��RC��EC���C��*C��wC���C��C�GC��:C��~C���C�c�C���C���C�u�C��!C�?C��>C��QC�,C��DC��C��kC���C���C�A�C� �D4{C�HC�>�C�<�C��TC��TC���C�7[C���C��C��C�]�C��QC�r�C��C� �C��XC���C�$C��mC���C��C��C��|C��hC���C��)C��QC�84C�*WC�^TC�bC���C�=�C��D4{D4{C���C�fC��GC���C��C���C��C�)�C�u�C��IC�UdC�I;C�WPC��(C���C���C���C���C���C���C���C���C���C��TC���C�*