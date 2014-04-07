app_vitals
==========

This is a module that runs on client machines for collecting patient vitals that is 
connected to any hardware required in capturing patient vitals. The local server application
runs on a fixed port 3000. Pages from external applications are expected to query for this 
page where they also pass the address of the destination link that will process the observed 
readings on return to the main application from the client vitals module.

The path request to the client vitals server application is supposed to be mapped to the IP address 
for the client IP address targeting port 3000 when the client vitals server app is running for
example:

    if client IP address as seen from the server is 192.168.12.23 on a server that is running on
    192.168.12.200 on port 3004 targeting a method processvitals on controller patient for patient 
    with internal id of 1, the request link would be written as:
    
        http://192.168.12.23:3000/vitals?destination=http://192.168.12.200:3004/patient/processvitals/1

To run the server, compile the 'vitalsserver.c' file using the command:

    1. Install compiling tools by running the command:
        
        sudo apt-get install build-essential
        
    2. Compile the server application by running the command:
    
        gcc vitalsserver.c -o vitalsserver
        
    3. To run the server app on the client, pass the ports for the equipment attached
        for instance:
        
       sudo ./vitalsserver -b /dev/ttyS0 -s /dev/ttyUSB0
       
       where: 
            -b: represents a BP Machine TM-2655 port; which is driven by instructions sent
            -s: represents a Scale; tried with a Health-o-meter Professional 500KL 
                      which continually spits readings
    
    4. Ideally, the running of the client vitals server is supposed to be a process that runs 
        automatically when the appliance is switched on.

