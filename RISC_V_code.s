.text
# Initialization
li t0, LED_MATRIX_0_BASE            # Base address of first LED matrix
li t1, LED_MATRIX_1_BASE             # Base address of second LED matrix
li t2, LED_MATRIX_2_BASE             # Base address of third LED matrix
li t3, LED_MATRIX_3_BASE             # Base address of fourth LED matrix

li t4, 0xd9F080               # Green Color (in RGB format)
li t5, 0xFFF0000               # Yellow Color (in RGB format)
li t6, 0xFF0d00               # Red Color (in RGB format)
li s11,0x000000
li a1, 0xFF3131   # Red ON 
li a2, 0x2D0000   # Red OFF

li a3, 0xFFFE00    # Yellow ON 
li a4, 0x433F22    # Yellow OFF

li a5, 0x6DFF14   # Green ON
li a6, 0x293E00   # Green OFF
#------------start-----------------#
    # First LED matrix
    sw a1, 0(t0)              # red on
    sw a4, 4(t0)              # yellow off
    sw a6, 8(t0)              # green off  
    # Second LED matrix
    sw a1, 0(t1)              # red on
    sw a4, 4(t1)              # yellow off
    sw a6, 8(t1)              # green off
    # Third LED matrix
    sw a1, 0(t2)              # red on
    sw a4, 4(t2)              # yellow off
    sw a6, 8(t2)              # green off
    # Fourth LED matrix
    sw a2, 0(t3)              # red off
    sw a4, 4(t3)              # yellow off
    sw a5, 8(t3)              # green on
#---------------------------------------#

    li t4, 4 
FIRST_STATE:
    # First LED matrix
    sw a1, 0(t0)              # red on
    sw a4, 4(t0)              # yellow off
    sw a6, 8(t0)              # green off  
    # Second LED matrix
    sw a1, 0(t1)              # red on
    sw a4, 4(t1)              # yellow off
    sw a6, 8(t1)              # green off
    # Third LED matrix
    sw a1, 0(t2)              # red on
    sw a4, 4(t2)              # yellow off
    sw a6, 8(t2)              # green off
    # Fourth LED matrix
    sw a2, 0(t3)              # red off
    sw a4, 4(t3)              # yellow off
    sw a5, 8(t3)              # green on
 #----------------------#
    addi t4, t4, -1          # Decrement the counter
    li t5, 0                 # Load zero into t5 for comparison
    bne t4, t5,  FIRST_STATE   # If counter is not zero, continue looping
    li t4, 4 
#----------------------#       
SECOND_STATE:
    # First LED matrix
    sw a1, 0(t0)              # red on
    sw a4, 4(t0)              # yellow off
    sw a6, 8(t0)              # green off  
    # Second LED matrix
    sw a1, 0(t1)              # red on
    sw a4, 4(t1)              # yellow off
    sw a6, 8(t1)              # green off
    # Third LED matrix
    sw a1, 0(t2)              # red on
    sw a4, 4(t2)              # yellow off
    sw a6, 8(t2)              # green off
    # Fourth LED matrix
    sw a2, 0(t3)              # red off
    sw a3, 4(t3)              # yellow on
    sw a6, 8(t3)              # green off 
 #----------------------#
    addi t4, t4, -1          # Decrement the counter
    li t5, 0                 # Load zero into t5 for comparison
    bne t4, t5, SECOND_STATE  # If counter is not zero, continue looping
    li t4, 4 
#----------------------#   
THIRD_STATE:
    # First LED matrix
    sw a1, 0(t0)              # red on
    sw a4, 4(t0)              # yellow off
    sw a6, 8(t0)              # green off  
    # Second LED matrix
    sw a1, 0(t1)              # red on
    sw a4, 4(t1)              # yellow off
    sw a6, 8(t1)              # green off
    # Third LED matrix
    sw a2, 0(t2)              # red off
    sw a4, 4(t2)              # yellow off
    sw a5, 8(t2)              # green on
    # Fourth LED matrix
    sw a1, 0(t3)              # red on
    sw a4, 4(t3)              # yellow off
    sw a6, 8(t3)              # green off
 #----------------------#
    addi t4, t4, -1          # Decrement the counter
    li t5, 0                 # Load zero into t5 for comparison
    bne t4, t5, THIRD_STATE  # If counter is not zero, continue looping
    li t4, 4 
#----------------------#  
fourth_STATE:
    # First LED matrix
    sw a1, 0(t0)              # red on
    sw a4, 4(t0)              # yellow off
    sw a6, 8(t0)              # green off  
    # Second LED matrix
    sw a1, 0(t1)              # red on
    sw a4, 4(t1)              # yellow off
    sw a6, 8(t1)              # green off
    # Third LED matrix
    sw a2, 0(t2)              # red off
    sw a3, 4(t2)              # yellow on
    sw a6, 8(t2)              # green off
    # Fourth LED matrix
    sw a1, 0(t3)              # red on
    sw a4, 4(t3)              # yellow off
    sw a6, 8(t3)              # green off
 #----------------------#
    addi t4, t4, -1          # Decrement the counter
    li t5, 0                 # Load zero into t5 for comparison
    bne t4, t5, fourth_STATE  # If counter is not zero, continue looping
    li t4, 4 
#----------------------#      
fifth_STATE:
    # First LED matrix
    sw a1, 0(t0)              # red on
    sw a4, 4(t0)              # yellow off
    sw a6, 8(t0)              # green off  
    # Second LED matrix
    sw a2, 0(t1)              # red off
    sw a4, 4(t1)              # yellow off
    sw a5, 8(t1)              # green on
    # Third LED matrix
    sw a1, 0(t2)              # red off
    sw a4, 4(t2)              # yellow on
    sw a6, 8(t2)              # green off
    # Fourth LED matrix
    sw a1, 0(t3)              # red on
    sw a4, 4(t3)              # yellow off
    sw a6, 8(t3)              # green off  
 #----------------------#
    addi t4, t4, -1          # Decrement the counter
    li t5, 0                 # Load zero into t5 for comparison
    bne t4, t5, fifth_STATE  # If counter is not zero, continue looping
    li t4, 4 
#----------------------#      
sixth_STATE:
    # First LED matrix
    sw a1, 0(t0)              # red on
    sw a4, 4(t0)              # yellow off
    sw a6, 8(t0)              # green off  
    # Second LED matrix
    sw a2, 0(t1)              # red off
    sw a3, 4(t1)              # yellow on
    sw a6, 8(t1)              # green off
    # Third LED matrix
    sw a1, 0(t2)              # red on
    sw a4, 4(t2)              # yellow of
    sw a6, 8(t2)              # green off
    # Fourth LED matrix
    sw a1, 0(t3)              # red on
    sw a4, 4(t3)              # yellow off
    sw a6, 8(t3)              # green off
 #----------------------#
    addi t4, t4, -1          # Decrement the counter
    li t5, 0                 # Load zero into t5 for comparison
    bne t4, t5, sixth_STATE  # If counter is not zero, continue looping
    li t4, 4 
#----------------------#   
seventh_STATE:
    # First LED matrix
    sw a2, 0(t0)              # red off
    sw a4, 4(t0)              # yellow off
    sw a5, 8(t0)              # green on  
    # Second LED matrix
    sw a1, 0(t1)              # red off
    sw a4, 4(t1)              # yellow on
    sw a6, 8(t1)              # green off
    # Third LED matrix
    sw a1, 0(t2)              # red on
    sw a4, 4(t2)              # yellow of
    sw a6, 8(t2)              # green off
    # Fourth LED matrix
    sw a1, 0(t3)              # red on
    sw a4, 4(t3)              # yellow off
    sw a6, 8(t3)              # green off
 #----------------------#
    addi t4, t4, -1          # Decrement the counter
    li t5, 0                 # Load zero into t5 for comparison
    bne t4, t5, seventh_STATE  # If counter is not zero, continue looping
    li t4, 4 
#----------------------# 
eighth_STATE:
    # First LED matrix
    sw a2, 0(t0)              # red off
    sw a3, 4(t0)              # yellow on
    sw a6, 8(t0)              # green off  
    # Second LED matrix
    sw a1, 0(t1)              # red off
    sw a4, 4(t1)              # yellow on
    sw a6, 8(t1)              # green off
    # Third LED matrix
    sw a1, 0(t2)              # red on
    sw a4, 4(t2)              # yellow of
    sw a6, 8(t2)              # green off
    # Fourth LED matrix
    sw a1, 0(t3)              # red on
    sw a4, 4(t3)              # yellow off
    sw a6, 8(t3)              # green off           
 #----------------------#
    addi t4, t4, -1          # Decrement the counter
    li t5, 0                 # Load zero into t5 for comparison
    bne t4, t5, eighth_STATE  # If counter is not zero, continue looping
    li t4, 4
    j FIRST_STATE
#----------------------# 
