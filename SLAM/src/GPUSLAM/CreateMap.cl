    /**********************************************************************
Copyright �2015 Advanced Micro Devices, Inc. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

�	Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
�	Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or
 other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
********************************************************************/
__kernel void CreateMap(__global float *inputbuffer,__global float *outputbuffer)
{
	float inputMainMap;


    uint global_addr;
    global_addr = get_global_id(0);

    /*
    float tileSize = inputbuffer[0];
    float noise = inputbuffer[1];
    float robotX = inputbuffer[2];
    float robotY = inputbuffer[3];

    float x = 0.0;
    float y = 0.0;
    float diffX = 0.0;
    float diffY = 0.0;
    //float diffmin = noise + nosie;
   

    for(int i = 0 ; i < 360; i += 2){
        x = inputbuffer[i];
        y = inputbuffer[i+1];
        diffX = abs_diff(x, robotX);
        diffY = abs_diff(y, robotY);
        if(diffX < noise && diffY < noise){
            
            if(diffX > diffY){
                outputbuffer[global_addr] = smoothstep(0.0, noise, diffX );
            }
            else{
                outputbuffer[global_addr] = smoothstep(0.0, noise, diffY );
            }
        }

    }

    */
	inputMainMap = inputbuffer[1];
  


    outputbuffer[global_addr] = inputMainMap ;
    
    

	
}