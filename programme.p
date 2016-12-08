/* exemple de programme progress */
/* ligne créée sur git hub */
def var socsoc as char no-undo .

update socsoc.
for each bonent where bonent.codsoc = socsoc
    no-lock:
    
    display bonent.codsoc bonent.motcle .
    
end.
