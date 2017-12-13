-- 946 instance id for antorus
-- 1992 garothi
-- 1987 molosses
-- 1997 haut comm
-- 1985 hasabel
-- 2025 eonar
-- 2009 imonar
-- 2004 kin'garoth
-- 1983 varimathara
-- 1986 sabbat
-- 1984 aggramar
-- 2031 argus
function doSpell(text,id)
    return "\124cff71d5ff\124Hspell:"..id.."\124h["..text.."]\124h\124r";
end
strat={
    [1992] = {
        [0]=
        "Le boss va faire pop de grande zones vertes \n "..
        "("..doSpell('decimation',244410)..")"..
        " à éloigner du raid puis à esquiver. "..
        "\n\nIl pourra aussi faire pop de plus petites \n"..
        "zones, il va falloir un joueur dans chaque \n"..
        "avant qu'elles n'explosent."..
        "\n\nLe boss va mettre à découvert ses canons deux fois, à 60% et 20% de vie."..
        "\n\nIl va falloir d'abord focus celui de gauche la premiere fois, puis celui de droite la deuxieme fois."..
        "\n\nDès qu'un de ses canons est détruit, tout le groupe s'éloigne au maximum du boss qui va faire de lourds dégats au raid en AoE."..
        "\n\nLe combat reprends ensuite. "..
        "\n\nIl est préférable d'utiliser la BL quand les "..
        "deux canons sont tombés, après la seconde grosse AoE.",
        [1]=
        "Pendant toute la durée du combat, le boss va cibler le tank pour le bombarder quelque secondes."..
        "Celui çi va donc s'éloigner (loin du raid) afin d'esquiver "        ..
        "les bombardements, alors que le deuxieme tank récupèrera le boss."..
    "Cette mécanique est présente tout au long du combat."},
    [1987]= {
        [0]= "Les deux molosses vont être tankés dos à dos, et assez éloignés (des marques vont être posées)."..
        "Les dps cac vont se placer derrière le chien de feu, et les heals + distants vont se placer entre les deux (une marque va être posée)."..
        "De temps à autre vous allez subir un debuff d'ombre, il faudra alors se regrouper pour limiter les dégats."..
        "Inversement, vous allez parfois subir un debuff de feu, il faudra alors s'écarter des autres pour limiter les dégats."..
        "Le chien d'ombre va parfois lancer une orbe en direction du chien de feu, il faudra absolument l'éviter sous peine de dégats mortels."..
        "Le chien de feu va parfois cibler trois joueurs pour leur foncer dessus, et infliger de lourds dégats au joueurs sur son chemin (joueur ciblé non compris). "..
        "Il faudra alors s'écarter pour les joueurs ciblés, et adapter son placement pour les autres."
    },
    [1997] = {
        [0]="Trois boss vont se succeder sur la plateforme, tout les 15% de vie environ."..
        "Il va falloir aller les combattre devant leur cellule, pendant qu'un dps désigné sera chargé d'aller dans cette cellule. Il faudra le heal régulièrement."..
        "Chaque boss possède deux mécanique, qui seront contrables par le dps dans la cellule:"..
        "- Boss 1 : Invocation de mobs et posage de mines."..
        "- Boss 2 : Invocation de mobs et AoE mortelle."..
        "- Boss 3 : AoE mortelle et posage de mines."..
        "Invocations : les dps devront se concentrer sur les add invoqués, sur les mages en priorité. Attention à avoir bien tué tout les ads avant de passer d'un boss à l'autre. "..
        "Dans la première cellule, un sort de zone est disponible pour tuer ces adds."..
        "Mines : des mines seront posés sur la plateforme. Il faudra absolument les esquiver sous peine de faire des dégats à tout le raid. "..
        "Dans la troisième cellule, un sort de zone permet d'enlever certaines de ces mines."..
        "AoE : Dans la deuxième cellule, il va être possible de placer des pylones. Il faudra en placer trois aux alentours du boss afin de s'y proteger lorsque la salle s'assombrira. "..
        "Il faudra en placer trois en prévision à l'emplacement du troisième boss. Une personne sera assignée pour activer les pylones.",
        [1]="Les tanks vont s'échanger le boss tout les trois stacks."
    }
    
}
