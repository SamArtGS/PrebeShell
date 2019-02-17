# PrebeShell
PrebeShell - Proteco38
https://unix.stackexchange.com/questions/81240/manually-generate-password-for-etc-shadow
contraEncriptada=$(perl -le 'print crypt("$ENV{contraDada}","\$$ENV{primeraParte}\$$ENV{segundaParte}\$")')
