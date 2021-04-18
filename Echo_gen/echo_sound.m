Audio effects using matlab


Taking the audio source
[inp,fs] = audioread('kem_party.mp3');
play = input("Press P if you want to hear it : ",'s')

if(play == 'P')
    sound(inp,fs);
end
    
while true  
    play = input("Press C to continue and P to play it again",'s')
    if(play == 'P')
        sound(inp,fs);
    else
        break;
    end
end

Now, creating the echo and playing it in real time.
            0.25
            rev_len = ans;
            
            0.3
            amp = ans;
            
out = echo_gen(inp,fs,rev_len,amp);
sound(out,fs);
