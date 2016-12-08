/* exemple de programme progress */
/* ligne créée sur git hub */
def var socsoc as char no-undo .
DEF VAR motcle AS CHAR NO-UNDO .

update "societe " socsoc.

UPDATE "motcle " motcle . 

for each bonent where bonent.codsoc = socsoc
                AND   bonent.motcle = motcle
    no-lock:
    
    display bonent.codsoc bonent.motcle bonent.typcom bonent.numbon .
    
    /* lecture des lignes µ/
    
    for each bonlig where bonlig.codsoc = bonent.codsoc
                    and   bonlig.motcle = bonlig.motcle
                    and   bonlig.typcom = bonlig.typcom
                    and   bonlig.numbon = bonlig.numbon
                    no-lock :
                    
             display bonlig.chrono .
    end.
    
end.
