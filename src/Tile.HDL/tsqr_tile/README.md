# TSQR 

The testcase to integrate the TSQR and FFT accelerators within MoSAIC is mosaic_scf.pl. 

The source code for tiles is found at src/Tile.HDL/fft_tile and src/Tile.HDL/tsqr_tile.

This configuration specifically integrates a 3DFFT8 with a TSQRst16.

Input data is not generated by the pico in this case, it is preloaded into scratchpads at r=1 c=0 and r=2 c=0. The pico at r=0 c=0 is in charge of moving data from the scratchpads into the FFT tile at r=0 c=1 first, then data moves from the FFT tile to scratchpad at r=0 c=2, then from scratchpad r=0 c=2 to the TSQR tile at r=1 c=2, and finally the results (TSQR output) will be placed into the scratchpad at r=1 c=1.

