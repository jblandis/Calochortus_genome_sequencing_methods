#This script was written by Jacob Landis to pull out read information from called fastq files from several flow cells of Nanopore sequencing for several Calochortus species.
#The data is published in a special issue of APPS in the article Balancing read length and sequencing depth: optimizing Nanopore long-read sequencing for monocots with an emphasis on Liliales


seqkit fx2tab Calochortus_albus_Lib1_Nanopore.fastq.gz -l -g -n -i -q -H > Calochortus_albus_Lib1_Nanopore.contig_info.txt

seqkit fx2tab Calochortus_albus_lib2_nanopore.fastq.gz -l -g -n -i -q -H > Calochortus_albus_lib2_nanopore.contig_info.txt

seqkit fx2tab Calochortus_albus_lib3.fastq.gz -l -g -n -i -q -H > Calochortus_albus_lib3.contig_info.txt

seqkit fx2tab Calochortus_albus_lib4.fastq.gz -l -g -n -i -q -H > Calochortus_albus_lib4.contig_info.txt

seqkit fx2tab Calochortus_albus_lib5.fastq.gz -l -g -n -i -q -H > Calochortus_albus_lib5.contig_info.txt

seqkit fx2tab Calochortus_amabilis_lib1_nanopore.fastq.gz -l -g -n -i -q -H > Calochortus_amabilis_lib1_nanopore.contig_info.txt

seqkit fx2tab Calochortus_amabilis_lib2_nanopore_redo.fastq.gz -l -g -n -i -q -H > Calochortus_amabilis_lib2_nanopore.contig_info.txt

seqkit fx2tab Calochortus_amabilis_lib3_run1_nanopore.fastq.gz -l -g -n -i -q -H > Calochortus_amabilis_lib3_run1_nanopore.contig_info.txt

seqkit fx2tab Calochortus_amabilis_lib3_run2.fastq.gz -l -g -n -i -q -H > Calochortus_amabilis_lib3_run2.contig_info.txt

seqkit fx2tab Calochortus_amabilis_lib4_nanopore.fastq.gz -l -g -n -i -q -H > Calochortus_amabilis_lib4_nanopore.contig_info.txt

seqkit fx2tab Calochortus_amabilis_lib5_nanopore.fastq.gz -l -g -n -i -q -H > Calochortus_amabilis_lib5_nanopore.contig_info.txt

seqkit fx2tab Calochortus_monophyllus_lib1.fastq.gz -l -g -n -i -q -H > Calochortus_monophyllus_lib1.contig_info.txt

seqkit fx2tab Calochortus_monophyllus_lib2_nanopore.fastq.gz -l -g -n -i -q -H > Calochortus_monophyllus_lib2_nanopore.contig_info.txt

seqkit fx2tab Calochortus_monophyllus_lib3_nanopore.fastq.gz -l -g -n -i -q -H > Calochortus_monophyllus_lib3_nanopore.contig_info.txt

seqkit fx2tab Calochortus_monophyllus_lib4_nanopore.fastq.gz -l -g -n -i -q -H > Calochortus_monophyllus_lib4_nanopore.contig_info.txt

seqkit fx2tab Calochortus_monophyllus_lib5_nanopore.fastq.gz -l -g -n -i -q -H > Calochortus_monophyllus_lib5_nanopore.contig_info.txt

seqkit fx2tab Calochortus_umbellatus_lib1.fastq.gz -l -g -n -i -q -H > Calochortus_umbellatus_lib1.contig_info.txt

seqkit fx2tab Calochortus_umbellatus_lib2.fastq.gz -l -g -n -i -q -H > Calochortus_umbellatus_lib2.contig_info.txt

seqkit fx2tab Calochortus_umbellatus_lib3.fastq.gz -l -g -n -i -q -H > Calochortus_umbellatus_lib3.contig_info.txt

seqkit fx2tab Calochortus_umbellatus_lib4.fastq.gz -l -g -n -i -q -H > Calochortus_umbellatus_lib4.contig_info.txt


awk '{$1="albus1" ; print ;}' Calochortus_albus_Lib1_Nanopore.contig_info.txt > Calochortus_albus_Lib1_Nanopore.edited_contig_info.txt
awk '{$1="albus2" ; print ;}' Calochortus_albus_lib2_nanopore.contig_info.txt > Calochortus_albus_lib2_nanopore.edited_contig_info.txt
awk '{$1="albus3" ; print ;}' Calochortus_albus_lib3.contig_info.txt > Calochortus_albus_lib3.edited_contig_info.txt
awk '{$1="albus4" ; print ;}' Calochortus_albus_lib4.contig_info.txt > Calochortus_albus_lib4.edited_contig_info.txt
awk '{$1="albus5" ; print ;}' Calochortus_albus_lib5.contig_info.txt > Calochortus_albus_lib5.edited_contig_info.txt

awk '{$1="amabilis1" ; print ;}' Calochortus_amabilis_lib1_nanopore.contig_info.txt > Calochortus_amabilis_lib1_nanopore.edited_contig_info.txt
awk '{$1="amabilis2" ; print ;}' Calochortus_amabilis_lib2_nanopore.contig_info.txt > Calochortus_amabilis_lib2_nanopore.edited_contig_info.txt
awk '{$1="amabilis3" ; print ;}' Calochortus_amabilis_lib3_run1_nanopore.contig_info.txt > Calochortus_amabilis_lib3_run1_nanopore.edited_contig_info.txt
awk '{$1="amabilis3" ; print ;}' Calochortus_amabilis_lib3_run2.contig_info.txt > Calochortus_amabilis_lib3_run2.edited_contig_info.txt
awk '{$1="amabilis4" ; print ;}' Calochortus_amabilis_lib4_nanopore.contig_info.txt > Calochortus_amabilis_lib4_nanopore.edited_contig_info.txt
awk '{$1="amabilis5" ; print ;}' Calochortus_amabilis_lib5_nanopore.contig_info.txt > Calochortus_amabilis_lib5_nanopore.edited_contig_info.txt

awk '{$1="monophyllus1" ; print ;}' Calochortus_monophyllus_lib1.contig_info.txt > Calochortus_monophyllus_lib1.edited_contig_info.txt
awk '{$1="monophyllus2" ; print ;}' Calochortus_monophyllus_lib2_nanopore.contig_info.txt > Calochortus_monophyllus_lib2_nanopore.edited_contig_info.txt
awk '{$1="monophyllus3" ; print ;}' Calochortus_monophyllus_lib3_nanopore.contig_info.txt > Calochortus_monophyllus_lib3_nanopore.edited_contig_info.txt
awk '{$1="monophyllus4" ; print ;}' Calochortus_monophyllus_lib4_nanopore.contig_info.txt > Calochortus_monophyllus_lib4_nanopore.edited_contig_info.txt
awk '{$1="monophyllus5" ; print ;}' Calochortus_monophyllus_lib5_nanopore.contig_info.txt > Calochortus_monophyllus_lib5_nanopore.edited_contig_info.txt

awk '{$1="umbellatus1" ; print ;}' Calochortus_umbellatus_lib1.contig_info.txt > Calochortus_umbellatus_lib1.edited_contig_info.txt
awk '{$1="umbellatus2" ; print ;}' Calochortus_umbellatus_lib2.contig_info.txt > Calochortus_umbellatus_lib2.edited_contig_info.txt
awk '{$1="umbellatus3" ; print ;}' Calochortus_umbellatus_lib3.contig_info.txt > Calochortus_umbellatus_lib3.edited_contig_info.txt
awk '{$1="umbellatus4" ; print ;}' Calochortus_umbellatus_lib4.contig_info.txt > Calochortus_umbellatus_lib4.edited_contig_info.txt


sample length GC avg.qual
