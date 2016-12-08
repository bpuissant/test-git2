/* exemple de programme progress */
/* ligne créée sur git hub */
def var socsoc as char no-undo .
DEF VAR motcle AS CHAR NO-UNDO .
DEF VAR typcom AS CHAR NO-UNDO .
def var numbon as char no-undo .

update "societe " socsoc.

UPDATE "motcle " motcle . 
UPDATE "typcom " typcom .
update "numbon " numbon .

for each bonent where bonent.codsoc = socsoc
                AND   bonent.motcle = motcle
                AND   bonent.typcom = typcom
                and   bonent.numbon = numbon
    no-lock:
    
   /* display bonent.codsoc bonent.motcle bonent.typcom bonent.numbon . */
    
    /* lecture des lignes */
    
    for each bonlig where bonlig.codsoc = bonent.codsoc
                    and   bonlig.motcle = bonlig.motcle
                    and   bonlig.typcom = bonlig.typcom
                    and   bonlig.numbon = bonlig.numbon
                    no-lock :
                    
             display bonent.codsoc bonent.motcle bonent.typcom bonent.numbon bonlig.chrono bonlig.articl .
    end.
    
end.
