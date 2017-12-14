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
    name, rank, icon, castingTime, minRange, maxRange, spellID = GetSpellInfo(id);
    spelllink = GetSpellLink(spellID);
    return spelllink;--..spellID.."spelllink|cff71d5ff|Hspell:"..spellID.."|h["..text.."]|h|r";
end
function color(text,colorhexa)
    return "|cff"..colorhexa..""..text.."|r";
end
strat={
    [1992] = {
        [0]=
        "Le boss va faire pop de grande zones vertes ("..doSpell('decimation',244410)..") à éloigner du raid puis à esquiver.\n"..
        "\nIl pourra aussi faire pop de plus petites zones, il va falloir un joueur dans chaque avant qu'elles n'explosent.\n"..
        "\nLe "..color("boss","ff0000").." va mettre à découvert ses canons deux fois, à "..color("60%","00ff00").." et "..color("20%","00ff00").." de vie.\n"..
        "\nIl va falloir d'abord focus celui de gauche la premiere fois, puis celui de droite la deuxieme fois.\n"..
        "\nDès qu'un de ses canons est détruit, tout le groupe s'éloigne au maximum du boss qui va faire de lourds dégats au raid en AoE.\n"..
        "\nLe combat reprend ensuite.\n"..
        "\nIl est préférable d'utiliser la BL quand les deux canons sont tombés, après la seconde grosse AoE.",
        [1]=
        "Pendant toute la durée du combat, le boss va cibler le tank pour le bombarder quelque secondes."..
        "Celui çi va donc s'éloigner (loin du raid) afin d'esquiver "        ..
        "les bombardements, alors que le deuxieme tank récupèrera le boss.\n"..
        "les bombardements, alors que le deuxieme tank récupèrera le boss.\n".. "les bombardements, alors que le deuxieme tank récupèrera le boss.\n".. "les bombardements, alors que le deuxieme tank récupèrera le boss.\n"..
        "les bombardements, alors que le deuxieme tank récupèrera le boss.\n"..
        
        
        
    "<i>Cette mécanique est présente tout au long du combat</i>."},
    [1987]= {
        [0]= "Les <b>deux molosses</b> vont être tankés dos à dos, et assez éloignés (des marques vont être posées).\n"..
        "\nLes dps cac vont se placer derrière le chien de feu, et les heals + distants vont se placer entre les deux (une marque va être posée).\n"..
        "\nDe temps à autre vous allez subir un debuff d'ombre, il faudra alors se regrouper pour limiter les dégats.\n"..
        "\nInversement, vous allez parfois subir un debuff de feu, il faudra alors s'écarter des autres pour limiter les dégats.\n"..
        "\nLe chien d'ombre va parfois lancer une orbe en direction du chien de feu, il faudra absolument l'éviter sous peine de dégats mortels.\n"..
        "\nLe chien de feu va parfois cibler trois joueurs pour leur foncer dessus, et infliger de lourds dégats au joueurs sur son chemin (joueur ciblé non compris).\n"..
        "\nIl faudra alors s'écarter pour les joueurs ciblés, et adapter son placement pour les autres.\n"
        
        
    },
    [1997] = {
        [0]="Trois boss vont se succeder sur la plateforme, tous les 15% de vie environ.\n"..
        "\nIl va falloir aller les combattre devant leur cellule, pendant qu'un dps désigné sera chargé d'aller dans cette cellule. Il faudra le heal régulièrement.\n"..
        "\nChaque boss possède deux mécaniques, qui seront contrables par le dps dans la cellule:\n"..
        "\n- Boss 1 : Invocation de mobs et posage de mines."..
        "\n- Boss 2 : Invocation de mobs et AoE mortelle."..
        "\n- Boss 3 : AoE mortelle et posage de mines.\n"..
        "\nInvocations : les dps devront se concentrer sur les adds invoqués, sur les mages en priorité. Attention à avoir bien tué tous les adds avant de passer d'un boss à l'autre.\n"..
        "\nDans la première cellule, un sort de zone est disponible pour tuer ces adds.n"..
        "\nMines : des mines seront posés sur la plateforme. Il faudra absolument les esquiver sous peine de faire des dégats à tout le raid.\n"..
        "\nDans la troisième cellule, un sort de zone permet d'enlever certaines de ces mines.\n"..
        "\nAoE : Dans la deuxième cellule, il va être possible de placer des pylones. Il faudra en placer trois aux alentours du boss afin de s'y proteger lorsque la salle s'assombrira.\n"..
        "\nIl faudra en placer trois en prévision à l'emplacement du troisième boss. Une personne sera assignée pour activer les pylones.",
        [1]="Les tanks vont s'échanger le boss tout les trois stacks."
    },
    [1985] = {
        [0] ="<html><body><h1>SimpleHTML Demo: Ambush</h1><img src=\"Interface\Icons\Ability_Ambush\" width=\"32\" height=\"32\" align=\"right\"/><p align=\"center\">|cffee4400[You think this hurts? Just wait.]|r</p><br/><br/><p>Among every ability a rogue has at his disposal,<br/>Ambush is without a doubt the hardest hitting Rogue ability.</p></body></html>"
    }
}
