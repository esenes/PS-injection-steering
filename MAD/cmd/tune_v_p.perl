#!/usr/local/bin/perl

######################################################################
######################################################################
######################################################################
#
# PROGRAM TO CALCULATE THE CHANGE OF TUNE AS A FUNCTION OF MOMENTUM
#
######################################################################
######################################################################
######################################################################








######################################################################
######################################################################

sub Update_madx{

######################################################################
######################################################################



    ######################################################################
    # INITIALIZATIONS
    ######################################################################
    my $DELTAP      =shift(@_);
    my $opticsfile  =shift(@_);
    my $madxfile    =shift(@_);


# Modify input file for MAD ##########################################
    system("ed -s $madxfile <<%
        g/twiss, DELTAP=.*,  centre, file=$opticsfile;/s/.*/twiss, DELTAP=$DELTAP,  centre, file=$opticsfile;/
        w
        q
        %");
}













######################################################################
######################################################################

sub ReadQ1{

######################################################################
######################################################################



########################################
# optics_slowbump.outx
########################################
$line=0;
open (FH, "optics_slowbump.outx");
while (<FH>)   {
    $line++;
    $data = $_;
    if ( $line == 22 ) {

#	print "Find the tunes:\n", $data;
	$, = ' ';               # set output field separator
	$\ = "\n";              # set output record separator
	($m,$name,$format,$tune) = split(' ', $data, 9999);
    }
}
close (FH);

   
return $m,$name,$format,$tune ;
}











######################################################################
######################################################################

sub ReadQ2{

######################################################################
######################################################################



########################################
# optics_slowbump.outx
########################################
$line=0;
open (FH, "optics_slowbump.outx");
while (<FH>)   {
    $line++;
    $data = $_;
    if ( $line == 23 ) {

#	print "Find the tunes:\n", $data;
	$, = ' ';               # set output field separator
	$\ = "\n";              # set output record separator
	($m,$name,$format,$tune) = split(' ', $data, 9999);
    }
}
close (FH);

   
return $m,$name,$format,$tune ;
}











  
 

	   



























######################################################################
######################################################################
######################################################################
#
# PROGRAM TO CALCULATE 
#
######################################################################
######################################################################
######################################################################





###########################################
# Read madx file from user
###########################################

printf("\n");
$madxfile = "2008_LHC_Extraction.madx";
printf("Please give the madx   file [%s] :  ", $madxfile );
chomp($par = <STDIN>);
if ( $par ne '' ) { $madxfile = $par; }





###########################################
# Read optics file from user
###########################################

printf("\n");
$opticsfile = "optics_slowbump.outx";
printf("Please give the optics file [%s] :  ", $opticsfile );
chomp($par = <STDIN>);
if ( $par ne '' ) { $opticsfile = $par; }





###########################################
# Read StartDELTAP from user
###########################################

printf("\n");
$StartDELTAP=-0.01;
do {
    printf("Please give start DELTAP [%10.07f]: ", $StartDELTAP);
    chomp($par = <STDIN>);
} while ( $par ne '' && eval($par) == 0);
if ( eval($par) != 0 ) { $StartDELTAP = eval($par); }



###########################################
# Read StopDELTAP from user
###########################################

$StopDELTAP=0.01;
do {
    printf("Please give stop  DELTAP [%10.07f]: ", $StopDELTAP);
    chomp($par = <STDIN>);
} while ( $par ne '' && eval($par) == 0);
if ( eval($par) != 0 ) { $StopDELTAP = eval($par); }



###########################################
# Read StepDELTAP from user
###########################################

$StepDELTAP=0.001;
do {
    printf("Please give step  DELTAP [%10.07f]: ", $StepDELTAP);
    chomp($par = <STDIN>);
} while ( $par ne '' && eval($par) == 0);
if ( eval($par) != 0 ) { $StepDELTAP = eval($par); }


printf("\n");
printf("\n madx   file is :   %s ", $madxfile);
printf("\n optics file is :   %s ", $opticsfile);
printf("\n");
printf("\n StartDELTAP = %10.07f", $StartDELTAP);
printf("\n StopDELTAP  = %10.07f", $StopDELTAP);
printf("\n StepDELTAP  = %10.07f", $StepDELTAP);

printf("\n");





########################################
# Write the results on Table.cvs
########################################

$filename="Table.cvs";
open(OUTPUTFILE,">$filename") || die("Cannot Open File");     # Open file with write access

printf( OUTPUTFILE " madx   file is :   %s", $madxfile);
printf( OUTPUTFILE "\n optics file is :   %s", $opticsfile);

printf( OUTPUTFILE "\n StartDELTAP = %10.07f", $StartDELTAP);
printf( OUTPUTFILE "\n StopDELTAP  = %10.07f", $StopDELTAP);
printf( OUTPUTFILE "\n StepDELTAP  = %10.07f", $StepDELTAP);
printf( OUTPUTFILE "\n    DELTAP      Q1       Q2");





######################################################################
# LOOP
######################################################################
$DELTAP = $StartDELTAP-$StepDELTAP;

LOOP: while( true ) {
    
    ###################################################
    # Change DELTAP 
    ###################################################
    $DELTAP = $DELTAP + $StepDELTAP;
    printf("\n");
    printf("\n#######################################");
    printf("\nDELTAP =  %8.06f", $DELTAP );
    printf("\n#######################################");
    Update_madx( $DELTAP, $opticsfile, $madxfile );


    ###################################################
    # Execute MADX
    ###################################################
    system("mad < $madxfile | grep warnings | grep -v 0");
 

    ###################################################
    # Read Q1
    ###################################################
    ( $m1,$name1,$format1,$tune1 ) = ReadQ1;
    printf("\n Q1 = %f",$tune1);
#    print "ReadQ1 ($m1,$name1,$format1,$tune1 )";


    ###################################################
    # Read Q2
    ###################################################
    ( $m2,$name2,$format2,$tune2 ) = ReadQ2;
    printf("\n Q2 = %f",$tune2);
#    print "ReadQ2 ($m2,$name2,$format2,$tune2 )";


    ###################################################
    # Write result on OUTPUTFILE
    ###################################################
    printf( OUTPUTFILE "\n  %8.05f  %8.05f  %8.06f", $DELTAP,$tune1,$tune2);


    ######################################################################
    # END OF LOOP
    ######################################################################
    last LOOP if ( $DELTAP >= $StopDELTAP);

} #### END LOOP. ####

printf("\n\n");
printf( OUTPUTFILE "\n\n");
close (OUTPUTFILE);

printf("\n");
printf("\n Results written on file:   %s ", $filename );
printf("\n");

exit;
