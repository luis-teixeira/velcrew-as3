﻿/* AS3	Copyright 2009 __velcrew__.		www.velcrew.com*/package com.velcrew.forms {	/**	 *	Class description.	 *	 *	@langversion ActionScript 3.0	 *	@playerversion Flash 9.0	 *	 *	@author Luis Teixeira	 *	@since  13.05.2009	 */	public class Sanitize	{		private var _words:Array = new Array("anus", "badalhoca", "badalhoco", "boceta", "bojão", "bordao", "bosta", "bregamalho", "brocha", "brochas", "broche", "broches", "broxa", "broxar", "broxe", "broxes", "broxo", "bunda", "bundas", "cabrão", "canalha", "caralhao", "caralhinho", "caralho", "coirao", "colhao", "colhoes", "cona", "copula", "copular", "corno", "cu", "dissensao", "empanizar", "emprenhar", "enrabar", "enrrabar", "entesar", "escrota", "escroto", "foda", "foda-se", "fodase", "fodasse", "foder", "fornicar", "grelo", "manguito", "merda", "mijar", "mijo", "minete", "minetes", "orcar", "panasca", "paneleira", "paneleiro", "pardaloca", "parir", "peia", "peidar", "penis", "piça", "pila", "piroca", "porra", "puta", "rabear", "racha", "rata", "ratas", "tesao", "tesura", "trampa", "vagina", "vergalho", "vulva", "abichado", "abichanado", "abichanar", "anal", "arse", "ass", "asshole", "bacamarte", "back-stabber", "bastard", "biatche", "bichinha", "bitch", "bitch", "bixa", "bloody hell", "boazuda", "boiola", "boiola", "bollocks", "boob", "bordejona", "bordinhas", "bostão", "bostinha", "bozo", "brochada", "brochinho", "bronha", "broxinho", "buceta", "bucetão", "bujão", "bullshit", "bundão", "bundinha", "butt", "cabrita", "cabrona", "caga", "cagado", "cagador", "cagalhão", "cagão", "cagona", "cajado", "canzana", "caralhada", "caralhete", "casseta", "cheira cus", "chi-chi", "chochota", "chupa-mos", "chupada", "chupadora", "chupar", "chupeta", "chuxar", "clitóris", "có-có", "cock", "cocksucker", "colhoada", "conão", "coninha", "crap", "crica", "culhão", "cunilingus", "cunt", "cuzão", "cuzinho", "daçe", "damn", "dase", "dasse", "deciente", "def", "dick", "dickhead", "dildo", "encavar", "enrabo", "enrrabar-te", "entesado", "enteseoado", "entrefolho", "erecção", "erexão", "esgalhar", "esporra", "esporrada", "esporradela", "esporrar", "esporrinha", "esporro", "fag", "faggy", "Fart", "fck", "felação", "felacio", "fellatio", "fodão", "fode", "foder-te", "fodida", "fodido", "fodilhão", "fodinha", "fonex", "fônex", "fonix", "fônix", "fornica", "fornicação", "fressura", "fressureira", "fuck", "fucker", "fuder", "fuk", "gay", "genitália", "glande", "grelão", "grelinho", "hell", "hillbilly", "jerk", "lambidela", "libido", "líbido", "linguado", "malho", "mamada", "mamas", "mangalho", "manguaça", "maricão", "mariconço", "mariconço", "mariquinhas", "marsápio", "mastro", "masturbação", "masturbar", "masturbo-me", "meita", "merdelim", "merdinha", "merdum", "mija", "mijada", "mijadela", "mijão", "mijinha", "minetada", "minetão", "minge", "mongoloide", "morcão", "morcela", "mother fucker", "nalgas", "nigga", "nigger", "Nipple", "nipples", "old-cock", "olhinho", "pachacha", "pachachinha", "paconaça", "panasquinha", "panilas", "papinho", "papo", "pariu", "passarinha", "pauzão", "pauzarrão", "pauzinho", "paxaxa", "paxaxinha", "peida", "peido", "penetrar", "perereca", "periquita", "piroca", "phodasse", "phoder", "pichota", "pilão", "pinocada", "pintelheira", "pintelho", "pirocada", "Piss", "pistão", "pito", "poia", "poop", "popozuda", "punheta", "punhetão", "punhetinha", "pussy", "putinha", "putona", "queca", "quequinha", "rabão", "rabinho", "rabuda", "rachinha", "rapada", "rapadinha", "ratinha", "retard", "semén", "sex", "sexo", "sexual", "shit", "shite", "siririca", "suruba", "tesuda", "tesudinha", "tetas", "tetuda", "tezão", "Tits", "trabuco", "tranzar", "traque", "trombadinha", "Turd", "tusa", "Twat", "va-j-j", "vacona", "vara", "veado", "venho-me", "viado", "vibrador", "vim-me", "vir-se", "wank", "wanker", "xavasca", "xi-xi", "xoxota", "xuchar", "xupa", "xupa-mos", "xupeta", "xupetinha", "xuxar", "b4ter", "b4d4lhoc4", "b4d4lhoco", "bich4", "bocet4", "bord4o", "bost4", "broch4", "broch4s", "breg4m4lho", "brox4", "brox4r", "bund4", "bund4s", "c4brão", "c4g4r", "c4n4lh4", "c4r4lhinho", "c4r4lho", "c4r4lh4o", "ch4velho", "coir4o", "colh4o", "con4", "copul4r", "copul4", "defec4r", "des4vergonh4do", "dissens4o", "emp4niz4r", "emprenh4r", "enr4b4r", "enrr4b4r", "enrij4r", "entes4r", "escrot4", "esp4nc4r", "fend4", "fissur4", "fod4", "fod4-se", "fod4se", "fod4sse", "fornic4r", "gret4", "lix4r", "logr4r", "mij4r", "m4nguito", "m4ric4s", "menstru4c4o", "merd4", "n4deg4", "n4deg4s", "orc4r", "pil4", "piç4", "piroc4", "p4n4sc4", "p4neleir4", "p4neleiro", "p4p4r", "p4rd4loc4", "p4rir", "pei4", "peid4r", "perdul4rio", "porr4", "prostitut4", "put4", "r4be4r", "r4bo", "r4ch4", "r4t4", "r4t4s", "s4c4n4", "tesur4", "tes4o", "tr4mp4", "tr4nc4", "tr4seiro", "v4gin4", "verg4lho", "vulv4", "4nus", "xux4r", "xuch4r", "4bich4do", "4n4l", "b4c4m4rte", "bichinh4", "bucet4", "bord4s", "bordejon4", "broch4d4", "bundinh4", "c4bron4", "c4gão", "c4cete", "c4r4lhete", "ch4rro", "chup4r", "chuch4r", "colho4d4", "coninh4", "cric4", "enc4v4r", "enr4bo", "enrr4b4r-te", "enteseo4do", "esg4lh4r", "esporr4", "fell4tio", "fel4ção", "fressureir4", "fodinh4", "fornic4ção", "grut4", "mij4del4", "m4ng4lho", "m4m4r", "merdinh4", "minet4d4", "n4lg4s", "p4u", "pichot4", "p4nil4s", "pererec4", "p4po", "p4con4ç4", "p4riu", "peid4", "poi4", "punhet4", "putinh4", "r4bão", "r4chinh4", "r4tinh4", "siriric4", "tesud4", "tr4buco", "tr4que", "v4c4", "xup4", "xoxot4", "4bich4n4do", "4nel", "bo4zud4", "b4d4lo", "bix4", "bordinh4s", "bostinh4", "bronh4", "bol4s", "c4brit4", "c4g4lhão", "c4sset4", "c4r4lh4d4", "chup4", "chux4r", "entes4do", "esporrinh4", "fel4cio", "fressur4", "fornic4", "l4mber", "lésbic4", "m4cho", "m4lho", "m4m4d4", "m4riquinh4s", "n4bo", "p4uzão", "p4n4squinh4", "p4pinho", "p4ch4ch4", "penetr4r", "p4ndeiro", "pintelheir4", "popozud4", "punhetinh4", "puton4", "r4binho", "r4p4d4", "s4lsich4", "tesudinh4", "tromb4", "trep4r", "tr4nz4r", "v4con4", "v4r4", "xup4-mos", "4bich4n4r", "4nilh4", "b4n4n4", "boiol4", "c4g4", "c4j4do", "chup4dor4", "chochot4", "cuec4", "esporr4r", "fodid4", "fecund4r", "fur4r", "l4mbo", "lingu4do", "m4sturb4r", "m4mão", "m4stro", "m4riconço", "p4uzinho", "p4ss4rinh4", "p4x4x4", "p4ch4chinh4", "piç4", "quec4", "r4bud4", "rol4", "r4p4dinh4", "s4lsichão", "tet4s", "tromb4dinh4", "ve4do", "xupet4", "c4beç4", "c4g4do", "c4nz4n4", "chup4-mos", "esporr4d4", "g4y", "gl4nde", "homossexu4l", "l4mbidel4", "m4sturbo-me", "morcel4", "m4ricão", "p4uz4rrão", "p4x4xinh4", "pic4", "peru piroc4", "pr4teleir4", "quequinh4", "rosc4", "tetud4", "vi4do", "xupetinh4", "x4v4sc4", "c4becinh4", "bur4co", "c4gon4", "chup4d4", "esporr4del4", "genitáli4", "m4sturb4ção", "m4m4s", "m4rsápio", "p4io", "p4lhinh4", "phod4sse", "sexu4l", "c4g4dor", "chupet4", "m4ngu4ç4", "m4minh4s", "p4po", "periquit4", "piroc4d4", "pinoc4d4", "virgind4de", "mij4", "mij4d4", "p4pinho", "surub4", "m4riconço", "tus4", "mijinh4", "esporr4", "meit4", "d4sse", "boiol4", "4norm4l", "cheir4 cus", "v4i-te foder", "vibr4dor", "punhet4", "cr4p", "b4st4rd", "b4ck-st4bber", "4sshole", "f4g", "Tw4t", "F4rt", "4rse", "d4mn", "ret4rd", "w4nk", "d4se", "v4i-te fuder", "bi4tche", "4ss", "nigg4", "f4ggy", "w4nker", "d4çe", "v4-j-j", "dickhe4d", "bat3r", "boc3ta", "broch3", "broch3s", "br3gamalho", "brox3", "brox3s", "chav3lho", "colho3s", "d3f3car", "d3sav3rgonhado", "d3spir", "diss3nsao", "3mpanizar", "3mpr3nhar", "3nrabar", "3nrrabar", "3nrijar", "3nrij3c3r", "3nt3sar", "3scrota", "3scroto", "3spancar", "f3nda", "foda-s3", "fodas3", "fodass3", "fod3r", "gr3lo", "gr3ta", "m3nstruacao", "m3rda", "m3r3triz", "m3nstruo", "min3t3", "min3t3s", "nad3ga", "nad3gas", "pan3l3ira", "pan3l3iro", "p3ia", "p3idar", "p3rdulario", "p3nis", "rab3ar", "t3sura", "t3sao", "tras3iro", "v3rgalho", "bacamart3", "buc3ta", "bord3jona", "cac3t3", "caralh3t3", "3ncavar", "3nrabo", "3nrrabar-t3", "3nt3s3oado", "3ntr3folho", "3sgalhar", "3sporra", "f3llatio", "f3lação", "fr3ssur3ira", "gr3linho", "mijad3la", "m3rdinha", "min3tada", "p3r3r3ca", "p3ida", "p3ido", "pint3lho", "punh3ta", "t3suda", "t3zão", "traqu3", "an3l", "buc3tão", "cass3ta", "3nt3sado", "3sporrinha", "f3lacio", "fr3ssura", "fod3r-t3", "gr3lão", "lamb3r", "m3mbro", "m3rd3lim", "min3tão", "p3n3trar", "pand3iro", "pint3lh3ira", "punh3tinha", "t3sudinha", "tr3par", "cu3ca", "3sporrar", "f3rro", "f3cundar", "fud3r", "m3mbro", "p3los", "punh3tão", "qu3ca", "t3tas", "v3ado", "vim-m3", "xup3ta", "cab3ça", "b3rbigão", "3sporrada", "f3z3s", "fod3", "gland3", "homoss3xual", "lambid3la", "l3it3", "masturbo-m3", "m3lõ3s", "morc3la", "phod3r", "p3ru piroca", "prat3l3ira", "qu3quinha", "s3xo", "t3tuda", "vir-s3", "xup3tinha", "cab3cinha", "3sporrad3la", "g3nitália", "phodass3", "s3xual", "v3nho-m3", "chup3ta", "3sporro", "p3riquita", "s3ios", "virg3m", "virgindad3", "s3mén", "3r3cção", "3sporra", "m3ita", "m3rdum", "dass3", "d3fici3nt3", "mongoloid3", "ch3ira cus", "fon3x", "vai-t3 fod3r", "fud3r", "punh3ta", "back-stabb3r", "asshol3", "nigg3r", "j3rk", "Nippl3", "ars3", "h3ll", "s3x", "ming3", "r3tard", "3r3xão", "das3", "d3f", "biatch3", "cocksuck3r", "d33p shit", "nippl3s", "wank3r", "daç3", "d3ci3nt3", "shit3", "fôn3x", "fuck3r", "dickh3ad", "b1cha", "caralh1nho", "cobr1r", "co1rao", "c?n1co", "desp1r", "d1ssensao", "empan1zar", "enr1jar", "enr1jecer", "f1ssura", "forn1car", "l1b1d1noso", "l1xar", "m1jo", "m1jar", "mangu1to", "mar1cas", "meretr1z", "m1nete", "m1netes", "p1la", "p1ça", "p1roca", "panele1ra", "panele1ro", "par1r", "pe1a", "pe1dar", "perdular1o", "prost1tuta", "pen1s", "trase1ro", "vag1na", "ab1chado", "b1ch1nha", "broch1nho", "brox1nho", "bund1nha", "con1nha", "cuz1nho", "cr1ca", "cun1ll1ngus", "fellat1o", "fressure1ra", "fod1nha", "forn1cação", "grel1nho", "líb1do", "m1jadela", "merd1nha", "m1netada", "p1lão", "p1stão", "p1chota", "pan1las", "par1u", "pe1da", "pe1do", "p1ntelho", "po1a", "put1nha", "rach1nha", "rat1nha", "s1r1r1ca", "ab1chanado", "b1xa", "bord1nhas", "bost1nha", "cabr1ta", "ch1-ch1", "cun1l1ngus", "esporr1nha", "felac1o", "fod1do", "forn1ca", "lésb1ca", "m1jão", "mar1qu1nhas", "merdel1m", "m1netão", "p1to", "p1nto", "panasqu1nha", "pap1nho", "pande1ro", "p1ntelhe1ra", "punhet1nha", "rab1nho", "sals1cha", "tesud1nha", "ab1chanar", "an1lha", "bo1ola", "fod1da", "l1nguado", "mar1conço", "pauz1nho", "passar1nha", "pachach1nha", "p1ça", "rapad1nha", "sals1chão", "trombad1nha", "v1m-me", "x1-x1", "berb1gão", "b1tch", "chour1ço", "cl1tór1s", "lamb1dela", "le1te", "mar1cão", "olh1nho", "paxax1nha", "p1ca", "peru p1roca", "pratele1ra", "quequ1nha", "v1ado", "v1r-se", "xupet1nha", "cabec1nha", "gen1tál1a", "marsáp1o", "pa1o", "palh1nha", "v1r", "mam1nhas", "per1qu1ta", "p1rocada", "p1nocada", "se1os", "v1rgem", "v1rg1ndade", "m1ja", "m1jada", "pap1nho", "mar1conço", "m1j1nha", "m1jão", "l1b1do", "me1ta", "bo1ola", "def1c1ente", "mongolo1de", "che1ra cus", "fod1lhão", "otár1o", "d1ldo", "v1brador", "b1tch", "sh1t", "n1gger", "h1llb1lly", "T1ts", "P1ss", "N1pple", "p1ss", "m1nge", "fon1x", "b1atche", "n1gga", "n1pples", "dec1ente", "fôn1x", "sh1te", "d1ck", "bullsh1t", "d1ckhead", "badalh0ca", "badalh0c0", "b0ceta", "b0rda0", "b0sta", "br0cha", "br0chas", "br0che", "br0ches", "b0jã0", "bregamalh0", "br0xa", "br0xar", "br0xe", "br0xes", "br0x0", "cabrã0", "caralhinh0", "caralh0", "caralha0", "chavelh0", "c0brir", "c0ira0", "c0lha0", "c0lh0es", "c0na", "c0pular", "c0rn0", "c?nic0", "c0pula", "desaverg0nhad0", "dissensa0", "escr0ta", "escr0t0", "f0da", "f0da-se", "f0dase", "f0dasse", "f0der", "f0rnicar", "grel0", "libidin0s0", "l0grar", "mij0", "manguit0", "menstruaca0", "menstru0", "0rcar", "pir0ca", "paneleir0", "pardal0ca", "perdulari0", "p0rra", "pr0stituta", "rab0", "tesa0", "traseir0", "vergalh0", "abichad0", "b0rdas", "b0rdej0na", "br0chada", "br0chinh0", "bujã0", "br0xinh0", "cabr0na", "cagã0", "charr0", "culhã0", "c0lh0ada", "c0ninha", "cuzinh0", "dur0", "enrab0", "entese0ad0", "entref0lh0", "esp0rra", "fellati0", "felaçã0", "f0dinha", "f0dã0", "f0rnicaçã0", "grelinh0", "líbid0", "mangalh0", "pilã0", "pistã0", "pich0ta", "pap0", "pac0naça", "peid0", "pintelh0", "p0ia", "rabã0", "tezã0", "trabuc0", "x0x0ta", "abichanad0", "b0azuda", "badal0", "bucetã0", "b0rdinhas", "b0stinha", "br0nha", "b0las", "bundã0", "cagalhã0", "c0nã0", "cuzã0", "entesad0", "esp0rrinha", "felaci0", "f0did0", "f0der-te", "f0rnica", "grelã0", "mach0", "mijã0", "malh0", "membr0", "minetã0", "nab0", "pauzã0", "pit0", "pint0", "papinh0", "pandeir0", "p0p0zuda", "put0na", "rabinh0", "tr0mba", "vac0na", "xupa-m0s", "b0stã0", "b0i0la", "cajad0", "chupad0ra", "ch0ch0ta", "c0rn0s", "esp0rrar", "ferr0", "f0dida", "h0m0", "lamb0", "linguad0", "mamã0", "mastr0", "maric0nç0", "membr0", "0lh0", "pauzinh0", "pel0s", "punhetã0", "r0la", "salsichã0", "tr0mbadinha", "vead0", "berbigã0", "cagad0", "ch0uriç0", "chupa-m0s", "c0ck", "esp0rrada", "f0de", "h0m0ssexual", "masturb0-me", "m0rcela", "maricã0", "0lhinh0", "pauzarrã0", "ph0der", "pir0ca", "r0sca", "sex0", "viad0", "burac0", "cag0na", "esp0rradela", "masturbaçã0", "marsápi0", "pai0", "ph0dasse", "venh0-me", "cagad0r", "esp0rr0", "pap0", "pir0cada", "pin0cada", "sei0s", "papinh0", "maric0nç0", "mijã0", "erecçã0", "libid0", "esp0rra", "b0i0la", "m0ng0l0ide", "an0rmal", "m0rcã0", "f0nex", "f0dilhã0", "0tári0", "dild0", "vibrad0r", "c0ck", "assh0le", "b0z0", "p00p", "b0ll0cks", "erexã0", "f0nix", "c0cksucker", "bl00dy hell", "0ld-c0ck", "b00b", "b4t3r", "b4d4lh0c4", "b4d4lh0c0", "b1ch4", "b0c3t4", "b0rd40", "b0st4", "br0ch4", "br0ch4s", "br0ch3", "br0ch3s", "br3g4m4lh0", "br0x4", "br0x4r", "br0x3", "br0x3s", "c4brã0", "c4r4lh1nh0", "c4r4lh0", "c4r4lh40", "ch4v3lh0", "c0br1r", "c01r40", "c0lh40", "c0lh03s", "c0n4", "c0pul4r", "c?n1c0", "c0pul4", "d3f3c4r", "d3s4v3rg0nh4d0", "d3sp1r", "d1ss3ns40", "3mp4n1z4r", "3mpr3nh4r", "3nr4b4r", "3nrr4b4r", "3nr1j4r", "3nr1j3c3r", "3nt3s4r", "3scr0t4", "3scr0t0", "3sp4nc4r", "f3nd4", "f1ssur4", "f0d4", "f0d4-s3", "f0d4s3", "f0d4ss3", "f0d3r", "f0rn1c4r", "gr3l0", "gr3t4", "l1b1d1n0s0", "l1x4r", "l0gr4r", "m1j0", "m1j4r", "m4ngu1t0", "m4r1c4s", "m3nstru4c40", "m3rd4", "m3r3tr1z", "m3nstru0", "m1n3t3", "m1n3t3s", "n4d3g4", "n4d3g4s", "0rc4r", "p1l4", "p1ç4", "p1r0c4", "p4n3l31r4", "p4n3l31r0", "p4rd4l0c4", "p4r1r", "p314", "p31d4r", "p3rdul4r10", "p0rr4", "pr0st1tut4", "p3n1s", "r4b34r", "r4b0", "t3sur4", "t3s40", "tr4s31r0", "v4g1n4", "v3rg4lh0", "4b1ch4d0", "b4c4m4rt3", "b1ch1nh4", "buc3t4", "b0rd4s", "b0rd3j0n4", "br0ch4d4", "br0ch1nh0", "br0x1nh0", "bund1nh4", "c4br0n4", "c4gã0", "c4c3t3", "c4r4lh3t3", "ch4rr0", "c0lh04d4", "c0n1nh4", "cuz1nh0", "cr1c4", "3nc4v4r", "3nr4b0", "3nrr4b4r-t3", "3nt3s304d0", "3ntr3f0lh0", "3sg4lh4r", "3sp0rr4", "f3ll4t10", "f3l4çã0", "fr3ssur31r4", "f0d1nh4", "f0rn1c4çã0", "gr3l1nh0", "líb1d0", "m1j4d3l4", "m4ng4lh0", "m3rd1nh4", "m1n3t4d4", "p1lã0", "p1stã0", "p1ch0t4", "p4n1l4s", "p3r3r3c4", "p4p0", "p4c0n4ç4", "p4r1u", "p31d4", "p31d0", "p1nt3lh0", "p014", "punh3t4", "put1nh4", "r4bã0", "r4ch1nh4", "r4t1nh4", "s1r1r1c4", "t3sud4", "t3zã0", "tr4buc0", "tr4qu3", "x0x0t4", "4b1ch4n4d0", "4n3l", "b04zud4", "b4d4l0", "b1x4", "buc3tã0", "b0rd1nh4s", "b0st1nh4", "br0nh4", "b0l4s", "c4br1t4", "c4g4lhã0", "c4ss3t4", "3nt3s4d0", "3sp0rr1nh4", "f3l4c10", "fr3ssur4", "f0d1d0", "f0d3r-t3", "f0rn1c4", "gr3lã0", "l4mb3r", "lésb1c4", "m4ch0", "m1jã0", "m4lh0", "m4r1qu1nh4s", "m3mbr0", "m3rd3l1m", "m1n3tã0", "n4b0", "p4uzã0", "p1t0", "p1nt0", "p4n4squ1nh4", "p4p1nh0", "p3n3tr4r", "p4nd31r0", "p1nt3lh31r4", "p0p0zud4", "punh3t1nh4", "put0n4", "r4b1nh0", "s4ls1ch4", "t3sud1nh4", "tr0mb4", "tr3p4r", "v4c0n4", "xup4-m0s", "4b1ch4n4r", "4n1lh4", "b010l4", "c4j4d0", "chup4d0r4", "ch0ch0t4", "cu3c4", "3sp0rr4r", "f3rr0", "f0d1d4", "f3cund4r", "l4mb0", "l1ngu4d0", "m4mã0", "m4str0", "m4r1c0nç0", "m3mbr0", "p4uz1nh0", "p4ss4r1nh4", "p4ch4ch1nh4", "p1ç4", "p3l0s", "punh3tã0", "qu3c4", "r0l4", "r4p4d1nh4", "s4ls1chã0", "t3t4s", "tr0mb4d1nh4", "v34d0", "v1m-m3", "xup3t4", "c4b3ç4", "b3rb1gã0", "c4g4d0", "ch0ur1ç0", "chup4-m0s", "3sp0rr4d4", "f0d3", "gl4nd3", "h0m0ss3xu4l", "l4mb1d3l4", "l31t3", "m4sturb0-m3", "m0rc3l4", "m4r1cã0", "0lh1nh0", "p4uz4rrã0", "p4x4x1nh4", "ph0d3r", "p1c4", "p3ru p1r0c4", "pr4t3l31r4", "qu3qu1nh4", "r0sc4", "s3x0", "t3tud4", "v14d0", "v1r-s3", "xup3t1nh4", "c4b3c1nh4", "bur4c0", "c4g0n4", "3sp0rr4d3l4", "g3n1tál14", "m4sturb4çã0", "m4rsáp10", "p410", "p4lh1nh4", "ph0d4ss3", "s3xu4l", "v3nh0-m3", "c4g4d0r", "chup3t4", "3sp0rr0", "m4m1nh4s", "p4p0", "p3r1qu1t4", "p1r0c4d4", "p1n0c4d4", "s310s", "v1rg3m", "v1rg1nd4d3", "m1j4", "m1j4d4", "p4p1nh0", "m4r1c0nç0", "m1j1nh4", "m1jã0", "3r3cçã0", "l1b1d0", "3sp0rr4", "m31t4", "d4ss3", "b010l4", "d3f1c13nt3", "m0ng0l01d3", "4n0rm4l", "ch31r4 cus", "f0n3x", "f0d1lhã0", "0tár10", "d1ld0", "v1br4d0r", "punh3t4", "b4ck-st4bb3r", "4ssh0l3", "n1gg3r", "N1ppl3", "4rs3", "m1ng3", "r3t4rd", "3r3xã0", "d4s3", "f0n1x", "b14tch3", "c0cksuck3r", "d33p sh1t", "n1gg4", "n1ppl3s", "bl00dy h3ll", "w4nk3r", "d4ç3", "d3c13nt3", "s0n 0f 4 b1tch", "sh1t3", "s0n 0f 4 wh0r3", "m0th3r fuck3r", "d1ckh34d");			private var _text:String = "";				//public static function validateWords(str:String):Boolean				public function Sanitize(str:String)		{				this._text = str;		}				public function HaveBadWords() : Boolean 		{			for( var i:int=0;i< this._words.length;i++)			{				var regExp:RegExp = new RegExp(this._words[i],"g");  				if(regExp.test(_text.toLowerCase()))//error++;					return true;			}			return false;				}	}}