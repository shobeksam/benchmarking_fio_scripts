# !/bin/bash
 
//randwrite vary iodepths, 4 threads
sudo fio --name=randwrite --ioengine=libaio --iodepth=1 --rw=randwrite --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=randwrite --ioengine=libaio --iodepth=8 --rw=randwrite --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=randwrite --ioengine=libaio --iodepth=16 --rw=randwrite --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=randwrite --ioengine=libaio --iodepth=32 --rw=randwrite --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1

//randread vary iodepths, 4 threads
sudo fio --name=randread --ioengine=libaio --iodepth=1 --rw=randread --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=randread --ioengine=libaio --iodepth=8 --rw=randread --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=randread --ioengine=libaio --iodepth=16 --rw=randread --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=randread --ioengine=libaio --iodepth=32 --rw=randread --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1

//sequential read vary iodepths, 4 threads
sudo fio --name=read --ioengine=libaio --iodepth=1 --rw=read --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=read --ioengine=libaio --iodepth=8 --rw=read --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=read --ioengine=libaio --iodepth=16 --rw=read --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=read --ioengine=libaio --iodepth=32 --rw=read --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1

//sequential write vary iodepths, 4 threads
sudo fio --name=write --ioengine=libaio --iodepth=1 --rw=write --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=write --ioengine=libaio --iodepth=8 --rw=write --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=write --ioengine=libaio --iodepth=16 --rw=write --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=write --ioengine=libaio --iodepth=32 --rw=write --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1

//randwrite vary threads, 32 iodepth
sudo fio --name=randwrite --ioengine=libaio --iodepth=32 --rw=randwrite --bs=4096 --direct=1 --size=1G --numjobs=1 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=randwrite --ioengine=libaio --iodepth=32 --rw=randwrite --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=randwrite --ioengine=libaio --iodepth=32 --rw=randwrite --bs=4096 --direct=1 --size=1G --numjobs=3 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=randwrite --ioengine=libaio --iodepth=32 --rw=randwrite --bs=4096 --direct=1 --size=1G --numjobs=4 --group_reporting --filename=/dev/nvme0n1

//randread vary threads, 32 iodepth
sudo fio --name=randread --ioengine=libaio --iodepth=32 --rw=randread --bs=4096 --direct=1 --size=1G --numjobs=1 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=randread --ioengine=libaio --iodepth=32 --rw=randread --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=randread --ioengine=libaio --iodepth=32 --rw=randread --bs=4096 --direct=1 --size=1G --numjobs=3 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=randread --ioengine=libaio --iodepth=32 --rw=randread --bs=4096 --direct=1 --size=1G --numjobs=4 --group_reporting --filename=/dev/nvme0n1

//sequential read vary threads, 32 iodepth
sudo fio --name=read --ioengine=libaio --iodepth=32 --rw=read --bs=4096 --direct=1 --size=1G --numjobs=1 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=read --ioengine=libaio --iodepth=32 --rw=read --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=read --ioengine=libaio --iodepth=32 --rw=read --bs=4096 --direct=1 --size=1G --numjobs=3 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=read --ioengine=libaio --iodepth=32 --rw=read --bs=4096 --direct=1 --size=1G --numjobs=4 --group_reporting --filename=/dev/nvme0n1

//sequential write vary threads, 32 iodepth
sudo fio --name=write --ioengine=libaio --iodepth=32 --rw=write --bs=4096 --direct=1 --size=1G --numjobs=1 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=write --ioengine=libaio --iodepth=32 --rw=write --bs=4096 --direct=1 --size=1G --numjobs=2 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=write --ioengine=libaio --iodepth=32 --rw=write --bs=4096 --direct=1 --size=1G --numjobs=3 --group_reporting --filename=/dev/nvme0n1
sudo fio --name=write --ioengine=libaio --iodepth=32 --rw=write --bs=4096 --direct=1 --size=1G --numjobs=4 --group_reporting --filename=/dev/nvme0n1
