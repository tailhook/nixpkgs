{ stdenv, fetchurl, unzip, fullVariant }:

stdenv.mkDerivation rec {
  name = "crafty-23.4";
  
  src = fetchurl {
    url = http://www.craftychess.com/crafty-23.4.zip;
    sha256 = "0rhf4pfxcwj8hqd7bqj98fpdd80v6ss1jnc9kgwx2fw4ksdi37pl";
  };

  bookBin = fetchurl {
    url = http://www.craftychess.com/book.bin;
    sha256 = "1j8f33iks4xf19bpv2mpvxrnlm5w1f5fbnxcrxasg9p7w600wyb8";
  };

  startPgn = fetchurl {
    url = http://www.cis.uab.edu/hyatt/crafty/pgn/start.pgn;
    sha256 = "08c066acqwgr19jkaizdbzdpcm3ld5nsixv5wp9pnc37b8w9f0vm";
  };

  enormousPgn = stdenv.lib.optionalString fullVariant (fetchurl {
    url = http://www.cis.uab.edu/hyatt/crafty/pgn/enormous.zip;
    sha256 = "001574gz3881xfvhlc2wy6pg66c4sh0q2ms42swwvq0l80syz6y2";
  });

  tableBases345 =
    let root = http://www.cis.uab.edu/hyatt/crafty/TB/3-4-5/;
    in stdenv.lib.optionals fullVariant (map fetchurl [
      { url = root + "kbbbk.nbb.emd";
        sha256 = "1yssskq32x22ki67ja7azvlglz0vgq6d6awdz4avj1k72nbcs90g"; }
      { url = root + "kbbbk.nbw.emd";
        sha256 = "0n0hy09pnp0ldxkrvs1gz1ch7px0hzj1ni7iicfy7y9zhsqaky2r"; }
      { url = root + "kbbk.nbb.emd";
        sha256 = "1gyd2p546rapisbzjpqm1kbdlsj77yw46lr5wx28sng11wkz8xnk"; }
      { url = root + "kbbk.nbw.emd";
        sha256 = "1gvl0vw9k22wkas8mzdik2ynnykgiisp8smyf97i0v7h1y7bxsx5"; }
      { url = root + "kbbkb.nbb.emd";
        sha256 = "0zk12q2d3xfbj7zv9jkk0p1gzj7n640jynx7nkcfhmpz9qvjz5d1"; }
      { url = root + "kbbkb.nbw.emd";
        sha256 = "1kw68pbs12cjf0gg40j5b694zdyffprjblf56czgyj8xpfz219x9"; }
      { url = root + "kbbkn.nbb.emd";
        sha256 = "0gibrw89zlz93sdi8bkhy0pkfcgl4sswbm3vg6fgp752cwsvksiv"; }
      { url = root + "kbbkn.nbw.emd";
        sha256 = "0v781yid5g57y3raw5pqhr2cb8zm0rscim0zszypp4piz22pb60h"; }
      { url = root + "kbbkp.nbb.emd";
        sha256 = "1y2nxqqd7fhk7x2fc3dxidqlcrgcbwd9gkk4bggay3xds9m5nhrg"; }
      { url = root + "kbbkp.nbw.emd";
        sha256 = "0py5adrciqbs0cdwh1lz5q8ldkyvqbc7rx4995k6kvlq4nh95qam"; }
      { url = root + "kbbkq.nbb.emd";
        sha256 = "141jkx0ifb91b5nwps4xssvvcm1fny8ng1zxqsjb1n9dgsigsna7"; }
      { url = root + "kbbkq.nbw.emd";
        sha256 = "0iknfd1rjm4ar4gycg0yzw5dbf7hs3y1fnb3s9abypk8pkn8ga9d"; }
      { url = root + "kbbkr.nbb.emd";
        sha256 = "0jpp1f0rgglrn7gc36v7y38rivwl68s6gr2p15lqdvngismmyp13"; }
      { url = root + "kbbkr.nbw.emd";
        sha256 = "0gqs5bxg6kv4nw0sl0drfs9p043q10ic6d9il0rlvs6qds6d9bv0"; }
      { url = root + "kbbnk.nbb.emd";
        sha256 = "0x7q6clkhfv3scqyyj42b8r7jkd99v396pmih2f10a4scca3glxc"; }
      { url = root + "kbbnk.nbw.emd";
        sha256 = "1qry3mpl1rjsjasayfxhh6abnm7arfdljnz9q2n5v769kaqx1bx3"; }
      { url = root + "kbbpk.nbb.emd";
        sha256 = "1y2vx6i351nbfrbg5qkjyp9ys8vkb45i5101gz8fx1w3pkxq9312"; }
      { url = root + "kbbpk.nbw.emd";
        sha256 = "16jkjb1ljyck5k4mr3pwxasxb1l08h7mcc0iigjlgzrnvsc38nrb"; }
      { url = root + "kbk.nbb.emd";
        sha256 = "162jy1dm8h35p5yxz9ii5y3bwspgf1xy4m0hhdxzqm3an8f2i7nr"; }
      { url = root + "kbk.nbw.emd";
        sha256 = "1lks1fccaikrc455cadkw1h1012jk6nqfmqzi40ilmlckc3i7pnj"; }
      { url = root + "kbkb.nbb.emd";
        sha256 = "1hvkp65jp5jd3j7rp9wivrfcwgr42kd4kbj9n2sk68nqbdw5j4h1"; }
      { url = root + "kbkb.nbw.emd";
        sha256 = "1hvkp65jp5jd3j7rp9wivrfcwgr42kd4kbj9n2sk68nqbdw5j4h1"; }
      { url = root + "kbkn.nbb.emd";
        sha256 = "1cwzqb64q7br94pc1wbp86k4fpcii14wcsj3f7l5n9mmgrzk3y9k"; }
      { url = root + "kbkn.nbw.emd";
        sha256 = "17wnagdkc25d6daqa3cmr0923k4d98jjzpw1h4g70r19zrnczjn5"; }
      { url = root + "kbkp.nbb.emd";
        sha256 = "05mcmbwwrp4iljlw0ba7d6vgh0w1pl5a1vsmvsg56k4npx6npc95"; }
      { url = root + "kbkp.nbw.emd";
        sha256 = "1jsh96mrhshj07x9sv3prl4zzhpl2xmdr6znxshyr461481b6g7m"; }
      { url = root + "kbnk.nbb.emd";
        sha256 = "0k6bn47hdj36szqcbh66wcbv3ygxv6cm0zj36rl9n1c7rc9j7p4g"; }
      { url = root + "kbnk.nbw.emd";
        sha256 = "0rhkzsw9zw36zckjic6dd95psx90fr4d8rzbhkqskh8l945cyxky"; }
      { url = root + "kbnkb.nbb.emd";
        sha256 = "10mblq1n0m0ipfs4zdnnay6dmwafshb8l5mynfrn5wiaf26jysvz"; }
      { url = root + "kbnkb.nbw.emd";
        sha256 = "0h90b4a6m7pp0qfc1anm30ffqwmaj3h1zslsbivw4k8i0jnpfqax"; }
      { url = root + "kbnkn.nbb.emd";
        sha256 = "009rw6czd9zagly7nz43rd9vq60h57mfrlzx02cchn1ydsr6cnj2"; }
      { url = root + "kbnkn.nbw.emd";
        sha256 = "03harm479g91s2lb5ixk27n50kj15qjz8784nn1rmmcicisj4z7c"; }
      { url = root + "kbnkp.nbb.emd";
        sha256 = "0y737si4zrf8ac9jmn9sbwylcd1yvcxn5ihn128p2kan3956fpdv"; }
      { url = root + "kbnkp.nbw.emd";
        sha256 = "1902fn3pwrslxi4rv8lrahwq3hakz9kfq70b8c0hqshf44h06ggi"; }
      { url = root + "kbnkq.nbb.emd";
        sha256 = "112chi9pw5fqrpv4q4a9p8jc5zld8wkiwd9y71rky09z7zng4vy5"; }
      { url = root + "kbnkq.nbw.emd";
        sha256 = "1m1pdsq9zl9g2fs2gjp76za3qmdrv0k1ngxvz3cjyh3p08lixca0"; }
      { url = root + "kbnkr.nbb.emd";
        sha256 = "13nkcvcn70g3q5fgrhbc8qs0i0fl7k78m5pxdgmijbkax52kpfgl"; }
      { url = root + "kbnkr.nbw.emd";
        sha256 = "0kjplgzbza4wp8aqf7b4k9nqg0vzdj0q6nj90sg7ssiw2w95z1jz"; }
      { url = root + "kbnnk.nbb.emd";
        sha256 = "1v3a5fi2fnh9mr9j59dv8jw2inx55jsfg9ypn92dgdmmlwg688yr"; }
      { url = root + "kbnnk.nbw.emd";
        sha256 = "096l2zpi7ywrqsapkz47pcivkh2igsdmxb8szd9gq8ylylrsma37"; }
      { url = root + "kbnpk.nbb.emd";
        sha256 = "1011x2w59fjn89nd8yqhvjcxdwla4chifwvx3hml2g82rfqgmw5r"; }
      { url = root + "kbnpk.nbw.emd";
        sha256 = "1nvqwv6akdr5acs9cdcf1zircw351fmf433niyc7blzqa0nng7n1"; }
      { url = root + "kbpk.nbb.emd";
        sha256 = "1bbyr59kapp6f2r4mn1b79668b6gf1j0pwh6f3fcym7xms7gg28k"; }
      { url = root + "kbpk.nbw.emd";
        sha256 = "0bn70m7g225mpbs1s7vpw5swd12wwziryp25sv2z5xpg03y7zm10"; }
      { url = root + "kbpkb.nbb.emd";
        sha256 = "0clwycpzqklasqw5igk74sm9w6wqwx6h8dbqajpccq3l6ipf2ylx"; }
      { url = root + "kbpkb.nbw.emd";
        sha256 = "0w7sf6q3m2hn9ix7lyg1c8casz3qxnzqvfvsbsda46xx5chrp7wh"; }
      { url = root + "kbpkn.nbb.emd";
        sha256 = "052fi7b56qq46pc4hvr5wpxkr0gv7wq0cnp5550qbr7an446nbri"; }
      { url = root + "kbpkn.nbw.emd";
        sha256 = "1lbwj845qff7y51iw4fybqvpcbh9r5jlfphmhidzdkjhd2gflb0j"; }
      { url = root + "kbpkp.nbb.emd";
        sha256 = "1ybzqw8fjqal6n6isy2m9rhhykd8g81slvc5m55ccald63zalk43"; }
      { url = root + "kbpkp.nbw.emd";
        sha256 = "139dm4709pvzxn6aixfsbv88ly0cjn6dk7khr1sjf2x17c21mj69"; }
      { url = root + "kbpkq.nbb.emd";
        sha256 = "0640xw9hasgif9cxyskpp397dzvhwnpkcfyn33d4vbi4r0cbdv81"; }
      { url = root + "kbpkq.nbw.emd";
        sha256 = "13yhn55y65pl6bh67hlfjlwj3mm4w6gy1y34qypgc7kck0rrygn6"; }
      { url = root + "kbpkr.nbb.emd";
        sha256 = "03avk4igjdyh6ayh3xm0ds8agmqhagyxmv3s8g8830qk3a6frkz3"; }
      { url = root + "kbpkr.nbw.emd";
        sha256 = "0vqkywgxkys0dxnx0sv35kzx9fxhqzbnk4qskjzd1fw9ck21pnad"; }
      { url = root + "kbppk.nbb.emd";
        sha256 = "0i4zgsp7izp789chl1vlp93dy567schz96my19vgki1y3ifx4wkz"; }
      { url = root + "kbppk.nbw.emd";
        sha256 = "0ki9a0f5cp7ma9zrabjrz5alk6d3xihl388j1h9ii4g52g1zci3v"; }
      { url = root + "knk.nbb.emd";
        sha256 = "162jy1dm8h35p5yxz9ii5y3bwspgf1xy4m0hhdxzqm3an8f2i7nr"; }
      { url = root + "knk.nbw.emd";
        sha256 = "0irmycxkah9j5qf9inmrz6cvjv8i894vzg5378qmazkpgpmzvix8"; }
      { url = root + "knkn.nbb.emd";
        sha256 = "0gwxp4q8wk9vsw4zprh3psrjdxkr3rjx0q3k3iqlf9y3rb6yy0hv"; }
      { url = root + "knkn.nbw.emd";
        sha256 = "0gwxp4q8wk9vsw4zprh3psrjdxkr3rjx0q3k3iqlf9y3rb6yy0hv"; }
      { url = root + "knkp.nbb.emd";
        sha256 = "1cfav9xgsmvs44j4irw1mx04phszlasz96i26ik8lw8wjdl8x6vx"; }
      { url = root + "knkp.nbw.emd";
        sha256 = "0p560zfmixmcizy60f13lz5a3yd83w7bz06cac0nj0myv4m4s6yp"; }
      { url = root + "knnk.nbb.emd";
        sha256 = "1w1dh6lmmrxjfi6srmznqvc7frzxhrs48f5g0jijb410y2c26y0l"; }
      { url = root + "knnk.nbw.emd";
        sha256 = "1a9nvqk0w2xhwx5d2ia35z8g2xcsg2kh59ca1jwbvx9sh438b2xh"; }
      { url = root + "knnkb.nbb.emd";
        sha256 = "1r8g6ml0hi6fxmff396wjnff76csrq47si1s0qsy1cdfkvax7yyn"; }
      { url = root + "knnkb.nbw.emd";
        sha256 = "1v74lhr44s0plxab7qhn4crf55hhp4j7w2mr090sfxz0bzk7cb78"; }
      { url = root + "knnkn.nbb.emd";
        sha256 = "1fy4ksqncjv0iqf0papy8hb353di0k39aq0jqh5jvshl9vmspz15"; }
      { url = root + "knnkn.nbw.emd";
        sha256 = "1qgprlkaqfwfjkmc048faz2j8y1n46mqp3dfpdnn9ps1x3iqvs0f"; }
      { url = root + "knnkp.nbb.emd";
        sha256 = "1xhsjq79nb7zgqgyjp0v6n0g8r37x2csa5svyz8ndsax9hrxc1r7"; }
      { url = root + "knnkp.nbw.emd";
        sha256 = "08pxmb0sdppims2lfl0zi42rsh3dlrdbl7vq2rs8v0b470q4j5jx"; }
      { url = root + "knnkq.nbb.emd";
        sha256 = "00y7vv6ajzr9kgwx8gk7wap7ncb9dg086iv3lwki6qcwvy14bxql"; }
      { url = root + "knnkq.nbw.emd";
        sha256 = "09brsqvzwx4fmf7a6ljqcabx2isqfv1mmvsjb453wmhx98fkglj3"; }
      { url = root + "knnkr.nbb.emd";
        sha256 = "01df21j4zdwb4dfngjrr4797b1ipdajs1730i4gajcbm4hqigi69"; }
      { url = root + "knnkr.nbw.emd";
        sha256 = "0q0jxmqc57s22vlbk98dbb7c2zmzs6g6chlg42sw156j9414jdfb"; }
      { url = root + "knnnk.nbb.emd";
        sha256 = "0jxlaqkbdxhw45p8y4g5ggryzc6l7s159fdlw0bi5ipcp40afpvg"; }
      { url = root + "knnnk.nbw.emd";
        sha256 = "0782r7r4b4qmy3afrdmj5l0vlp5sgr33v0h0cigxghfmf19xhgdl"; }
      { url = root + "knnpk.nbb.emd";
        sha256 = "0cxj1mxdz8hmjlzhnc7j4cdi5jkcj1l0xfrz4l4z4az7f4ad91ci"; }
      { url = root + "knnpk.nbw.emd";
        sha256 = "13y2picx7c814hfsq3bb95js9s3bng85mblhhb7i12yqhddrzyx0"; }
      { url = root + "knpk.nbb.emd";
        sha256 = "03xah0j9n427nvqwym0ay84zg831v26x3gnp1zkpg1072r78d2p2"; }
      { url = root + "knpk.nbw.emd";
        sha256 = "10lv54gs3pgqqmndlihvjfbrfiqzgzfl7a127nchfyb12f9y91zz"; }
      { url = root + "knpkb.nbb.emd";
        sha256 = "1jiihs0cd5jx2hwv99vb3n3iahqwz6ja60zk5nbr17cxzhw0g2ng"; }
      { url = root + "knpkb.nbw.emd";
        sha256 = "19jxzp7v90hd1j6i109z03vdq81cndmlvmbb65fm2mc4ffrwms83"; }
      { url = root + "knpkn.nbb.emd";
        sha256 = "1yqjxxhc0fq2jvsqifw8my8lzfs2fgn6z8c2lgvak8ag2mi57ka8"; }
      { url = root + "knpkn.nbw.emd";
        sha256 = "1kh8sh9vscig0kkwvz79i3gk582xrgll8f4jlqw219f80ckh2ry6"; }
      { url = root + "knpkp.nbb.emd";
        sha256 = "1sd46as18ciml1nyzwh8v5qm5slhchbv15yv4qhcaga7cmljy9w5"; }
      { url = root + "knpkp.nbw.emd";
        sha256 = "0p8cwryphz16j2yihg7c1szx20s9mxzbgc7y6ddigvhafa19fc1d"; }
      { url = root + "knpkq.nbb.emd";
        sha256 = "03vaswq917maa1wxfkilcxjxvm9srnwzmzq1sq36q3h3dlcv23mp"; }
      { url = root + "knpkq.nbw.emd";
        sha256 = "1wmnipmacrbwggr1n63zdivvy9haqs96rkn458xswpmvks5fbyqj"; }
      { url = root + "knpkr.nbb.emd";
        sha256 = "1ngpj8iaz6si5i3vxri8k8ajpaim71caldxal28djkpmw91yqil6"; }
      { url = root + "knpkr.nbw.emd";
        sha256 = "1hqm6xp361iqdn7ayw6zvdk068iz2mwdz6sr087cr7gc0mim2ndw"; }
      { url = root + "knppk.nbb.emd";
        sha256 = "1mphpswq01v7d0pxij12nd1lpiz683gp0zgwnz0nyninwsmpq08v"; }
      { url = root + "knppk.nbw.emd";
        sha256 = "1m8l9jy96nxvqk48y73yj8b996q2gza1h448rrl00hjn1apbmjf3"; }
      { url = root + "kpk.nbb.emd";
        sha256 = "1xgbahdym0nbj63rc6rwgiwzss8xw3ra4lg03z46666hwykx8gxp"; }
      { url = root + "kpk.nbw.emd";
        sha256 = "1clkwzf3nb8lzrrs3gg4m9j5wh7z66ihra8gyz8majpjbhcz86an"; }
      { url = root + "kpkp.nbb.emd";
        sha256 = "06jsna3795gjlymnrxmscgxnz9ic1i648hr6v5vfagf8lmqi9nq4"; }
      { url = root + "kpkp.nbw.emd";
        sha256 = "1gplq6ksq4kvwramx137ncl6giwcm8rg3q8xmyqk1mq10dwcjfbp"; }
      { url = root + "kppk.nbb.emd";
        sha256 = "11xlmyw2hx26mkca4bid4qg62yxd0pspgmb40l9kf6h0yjzq4q07"; }
      { url = root + "kppk.nbw.emd";
        sha256 = "0j4dmlsm5i7rwrw7kkiq8j7zmcwvb6w38g41kfslm4sv6nm5mvjs"; }
      { url = root + "kppkb.nbb.emd";
        sha256 = "0w2yzi0l3jdnr88my8gcsqy72crkm9ppyiy8wl629lpcbrwj75x6"; }
      { url = root + "kppkb.nbw.emd";
        sha256 = "06f1h0x6rcsq9kag1fcz9z47hpffr4w9q171rkspd8ffpfzqq7za"; }
      { url = root + "kppkn.nbb.emd";
        sha256 = "0wmkn2i8z7m4j93hid2z2ns31kg4yhn939lfkvglfdvrgqjn1kh9"; }
      { url = root + "kppkn.nbw.emd";
        sha256 = "1ky4zcwyv5rn4g0h490s6l8vin6rwdv156ial7iczaq8hf70yhkm"; }
      { url = root + "kppkp.nbb.emd";
        sha256 = "1ivfxjphcld71cg4rvvq9rvnkpidh6apd52jf2cv42fvx313d9mq"; }
      { url = root + "kppkp.nbw.emd";
        sha256 = "1ymvp0z6jhrqi2hz87c81r54m9sdjpm91pvxwbx061yfbdpv230z"; }
      { url = root + "kppkq.nbb.emd";
        sha256 = "018cy2q2dvhxjh80prjxg6fx1lal50qc5mzzbfy0xlkk1l1y4sk5"; }
      { url = root + "kppkq.nbw.emd";
        sha256 = "0k4jlzcn213h8303jl3hkdapd9z8dhazsa22zac0bg52488r07gj"; }
      { url = root + "kppkr.nbb.emd";
        sha256 = "187pjqvp7kzyxkncp51c3vi26khimabkw5b3nyaj498jqjjlfa23"; }
      { url = root + "kppkr.nbw.emd";
        sha256 = "0mkrap8dizwxhhiij2xzlvbn8q9hrlsfvkcfcxajn8azaxnhx3ck"; }
      { url = root + "kpppk.nbb.emd";
        sha256 = "10spzc39zks7pwa2qy8aps5hk0z4xsxq1lpfwd61qwm5hazci391"; }
      { url = root + "kpppk.nbw.emd";
        sha256 = "1wx48xyb1xl5v7gjrahby8psig1gs9dipsj6iq44d052qr56513j"; }
      { url = root + "kqbbk.nbb.emd";
        sha256 = "1zvacin043njqws2nwiylch5dan28yis3ybcjb3zvmkdxyy8qzrh"; }
      { url = root + "kqbbk.nbw.emd";
        sha256 = "1s5likpps43bxplsv5yrqqnh2xzakibcknn6jh67xwdvl2v4jfz5"; }
      { url = root + "kqbk.nbb.emd";
        sha256 = "1814l1cgfphzl4v7k3hnwi21ydzfzyr7xzbh05dw3mnm0dsg9gzk"; }
      { url = root + "kqbk.nbw.emd";
        sha256 = "0xpmqr99qscrqjk5rzb7cgkjpcz4cmp6gngfsy8hq7530a4nknxk"; }
      { url = root + "kqbkb.nbb.emd";
        sha256 = "1jpl4nx4ddwnz455433508ibxywsrccb098infn992gs7wqqjsi2"; }
      { url = root + "kqbkb.nbw.emd";
        sha256 = "0krx6irqv0gvdy7hknhwa6gj2zwiv9rnjk2qlf2cy6xsldzn6af7"; }
      { url = root + "kqbkn.nbb.emd";
        sha256 = "09xsg79xajh1g2d9nvms61pjgb13x6fc0nhw58nnfg28nbvjzz1n"; }
      { url = root + "kqbkn.nbw.emd";
        sha256 = "0gb8pdsd77fmjd09h7ri1z8rrparqn5xa56dwi4yd4hhwsb8c4fq"; }
      { url = root + "kqbkp.nbb.emd";
        sha256 = "07h1zzaic2qh2140wvcq0hvhmkv0j9h7rchm3avsk7m6ma98d7zi"; }
      { url = root + "kqbkp.nbw.emd";
        sha256 = "13lffpplxis2a5949wnq998262idiydg2b2pz5np3mxyppc48r61"; }
      { url = root + "kqbkq.nbb.emd";
        sha256 = "09l20wcjcvmncz97j4107q3ch81dgzmx7i86m6pzifhy8mrn2cll"; }
      { url = root + "kqbkq.nbw.emd";
        sha256 = "0vra23shpwlsiyzd8wd2m2ayrs4ig2943l90ps9xh1p6igjv1n9d"; }
      { url = root + "kqbkr.nbb.emd";
        sha256 = "0gmzhzr1m751djfp6b71yrah04r89lq41nshvw02qp531aqp1xyq"; }
      { url = root + "kqbkr.nbw.emd";
        sha256 = "1zz0fdfn463xa76xd8hg2hz8a1kaljka9l01z64vsqvn73nkd5fm"; }
      { url = root + "kqbnk.nbb.emd";
        sha256 = "1m7krpj5sd6mvrsks39jyxkg8mvz7g15rwnn55kql2flpsw481q4"; }
      { url = root + "kqbnk.nbw.emd";
        sha256 = "1q6jvhxjzcani3ls402n3ylhhmf8kd482in19d2ny0q7pqcimvy7"; }
      { url = root + "kqbpk.nbb.emd";
        sha256 = "1pdc8kd3q9f8vgfqxymar3vkg1h9qbsfr614lhgbmpmpmn4zxqdj"; }
      { url = root + "kqbpk.nbw.emd";
        sha256 = "0dcyxa92200g0dgq7lk018grhvwxzrhh6wrwqdk6g3v02g63h38d"; }
      { url = root + "kqk.nbb.emd";
        sha256 = "1f0cdqyakzck0ng11smhk9kdkch9hbm3azniqv2wjg2wp9aj9s1n"; }
      { url = root + "kqk.nbw.emd";
        sha256 = "0gzxgkxzfnlri5ypvx67k2mwq4xnwkm4hn4n9mqpl7fjwdj733w2"; }
      { url = root + "kqkb.nbb.emd";
        sha256 = "0j3w39l4mnwm5nrrw0zcd4icdj8hgds792nhick2mfn40injwna6"; }
      { url = root + "kqkb.nbw.emd";
        sha256 = "0q30gjvlfmx1ld4i0x2xj97i4i3w6q1vhl2q91w8dd84bw1cy1k8"; }
      { url = root + "kqkn.nbb.emd";
        sha256 = "15aivg3vpc6y1g3gcnmssjnww9l7npy3g5xxq3wq99ai1mbgik7p"; }
      { url = root + "kqkn.nbw.emd";
        sha256 = "1qqi3r6a5d74108xgdxx9qx4cxv7fkr9jpkrcizirzv30dp3cb4z"; }
      { url = root + "kqkp.nbb.emd";
        sha256 = "0hlsmjn9baa1bplnwygxvgnkfn15fm9fhc6k39bfiacy7ai0zkka"; }
      { url = root + "kqkp.nbw.emd";
        sha256 = "0ibx6xp2v980626xffb7khz8lfnxb9577w5zc6mlc892kinaf4gf"; }
      { url = root + "kqkq.nbb.emd";
        sha256 = "0kc2d1qwlib2v71fhx11frk2a06lx1mvvddw83mmvyzca108ggz3"; }
      { url = root + "kqkq.nbw.emd";
        sha256 = "0kc2d1qwlib2v71fhx11frk2a06lx1mvvddw83mmvyzca108ggz3"; }
      { url = root + "kqkr.nbb.emd";
        sha256 = "13fabjhiq5psyvg2a1cbx16471g35il0lm3fsfdy4dpl9zr2pw58"; }
      { url = root + "kqkr.nbw.emd";
        sha256 = "0hwy21k0a3qa6b1093904krdqrqrz5iwqsb0qxqqnwljpz8kr1zl"; }
      { url = root + "kqnk.nbb.emd";
        sha256 = "0dy9d9fwaqvmr3x796a7vq5ynqnpw8b4l0zsm7nkvvd5sak1blxj"; }
      { url = root + "kqnk.nbw.emd";
        sha256 = "0zdzqhg0ww4b79w3w3hjpwfar0r8fhk2yc8jknwzcc9q9rv9a78n"; }
      { url = root + "kqnkb.nbb.emd";
        sha256 = "04zvc8s2rwcgr9chx3rmvr3shs47i75pwh1wph9wiy33jx5gw846"; }
      { url = root + "kqnkb.nbw.emd";
        sha256 = "1v22rln9plikvchdxqii4m9kh9s0mahrxnsqs6i2kzcfphiqp3ns"; }
      { url = root + "kqnkn.nbb.emd";
        sha256 = "0kwz1390brs60ri0mrvf3f64ax0yncnp6kpaf7nrw5v29s5cxpyz"; }
      { url = root + "kqnkn.nbw.emd";
        sha256 = "0gvsx71nf0bhggk338rsmvbpajwa6j1ja09gchny6i9gvg9l0frs"; }
      { url = root + "kqnkp.nbb.emd";
        sha256 = "169llq4dv4fsh8hvvwwrbc2b1iwklnqwqmhzv77q862cxs8rbcsa"; }
      { url = root + "kqnkp.nbw.emd";
        sha256 = "1b1mgfh7hgiqv9a0dv1f7vr180g1mjxcg3nlx4zmpj0mzgwka39g"; }
      { url = root + "kqnkq.nbb.emd";
        sha256 = "02za7wp2z1h1sd55mmkaa6i0bh3piwiz5ybpdrxk2amm54kvjmsj"; }
      { url = root + "kqnkq.nbw.emd";
        sha256 = "0s9c4zfw4slp7lv373nkhlyafn3hpw9pv4543mm69c6cdnl04xhk"; }
      { url = root + "kqnkr.nbb.emd";
        sha256 = "0nffvkdfs17b6n2hmy9i7ha793dn8an7ff9nd97z62zxxm63gmyp"; }
      { url = root + "kqnkr.nbw.emd";
        sha256 = "1jqmbna1i5wqahqz2lalviv61y6ak379fhjcc9xg651dxfnjnmwh"; }
      { url = root + "kqnnk.nbb.emd";
        sha256 = "1dlhfqmv5g3f9lvfgvy4h7x0xfkbn9pcsplb9kjlqg7qhkimcvbg"; }
      { url = root + "kqnnk.nbw.emd";
        sha256 = "0zlg34ff2bp88q8bws2isswwa8ls0qncpzyzc3d1j6avkprwkq2i"; }
      { url = root + "kqnpk.nbb.emd";
        sha256 = "0i436sxh5093zy03v6rjf6r0ydjmkmfj5fkxqk2qjjps2gc6jwsn"; }
      { url = root + "kqnpk.nbw.emd";
        sha256 = "0yf7il0maiw8c9gam9cvnjgvywjk5k3pjvmgcy377yf31hgi209g"; }
      { url = root + "kqpk.nbb.emd";
        sha256 = "11vl1p9qwqsdbxdppqg3n73868kd69kqhl6h6q1p47a4dq9lqldy"; }
      { url = root + "kqpk.nbw.emd";
        sha256 = "02ik15sm3mdhyn76rnx8jvg7fma1m7njm55h6mqqqgqgbji0zzvi"; }
      { url = root + "kqpkb.nbb.emd";
        sha256 = "0s7k9dh87s6msmqpv43csax632i5w5gzc2s4ijiy38kg0d3cgz31"; }
      { url = root + "kqpkb.nbw.emd";
        sha256 = "115y0gshq2g6p6mfclxag1lvba3pz2rlyw8b6d5rykkapm299yvb"; }
      { url = root + "kqpkn.nbb.emd";
        sha256 = "1i3wx9c7dk1sdig6kv4h3pa2m9ir1gd6qz7jyan9q18wvrpag12l"; }
      { url = root + "kqpkn.nbw.emd";
        sha256 = "0iqxrgr1x2k3mfvhgckz9dya92wj8vddpv746gz86yi6n05wp373"; }
      { url = root + "kqpkp.nbb.emd";
        sha256 = "0ifxixayrfhdp3yq04h55kjcgbly4390ghrhpvllc3mf6yrcg3sh"; }
      { url = root + "kqpkp.nbw.emd";
        sha256 = "1hf8b4lvci0lm4skvxsw83c521q2x1i7yij8ih9j8ijyg64fivp8"; }
      { url = root + "kqpkq.nbb.emd";
        sha256 = "0vy9ihcl80q2ml7lilgi007d7zx4r9knsyn8f63fqfa8x3m5rs6b"; }
      { url = root + "kqpkq.nbw.emd";
        sha256 = "0xqngdyq8anfz1xqyg24nvwds7k7027j1l5pjwl22x0ipi7hda98"; }
      { url = root + "kqpkr.nbb.emd";
        sha256 = "1c3xbrvsmyjz0ydc3xpw5hcxky20742d2jqwf7rrx5q223y11mlv"; }
      { url = root + "kqpkr.nbw.emd";
        sha256 = "0fsi0d0czwvi2az56v2a4r0k78drybyqdda264gqjs53j65h02bp"; }
      { url = root + "kqppk.nbb.emd";
        sha256 = "0995h6li6ixljxfs4xxy1bvmzj589h675bg8pkhbrmvimhja2nrf"; }
      { url = root + "kqppk.nbw.emd";
        sha256 = "18hh8080s90qdacy6svhymfs4nw27x0p0s8km8p090rwk5si860a"; }
      { url = root + "kqqbk.nbb.emd";
        sha256 = "15n425kcfjypwbxj1ck9v4rzd24lmd36kczhsi1cp2y6955vz9vp"; }
      { url = root + "kqqbk.nbw.emd";
        sha256 = "1mjkgcblgsga7vib0410mdcjqh3dkc3xq8nx17p1hapinj987w8s"; }
      { url = root + "kqqk.nbb.emd";
        sha256 = "0ihmqjiqycybci4zczrdv4c3a1bdz7l2qln0g43rbzwbkjsplykx"; }
      { url = root + "kqqk.nbw.emd";
        sha256 = "0m0359yb17azb8s482i63fvqqy1b9idgklrj82rpbidasz41gj0m"; }
      { url = root + "kqqkb.nbb.emd";
        sha256 = "0b9hm4pw01dal7lazb1qakjbgg5wg3nrn2bdjmkabfjgbrnh4hbm"; }
      { url = root + "kqqkb.nbw.emd";
        sha256 = "1msk54xzbn41rhlyx9qkragihmg7yw2r5jc97lkvb7d8lwg6s59r"; }
      { url = root + "kqqkn.nbb.emd";
        sha256 = "18d8nc25h33gd1qr6jmsbka3qmd8xjb2q1545959x6b4ch93cbsy"; }
      { url = root + "kqqkn.nbw.emd";
        sha256 = "0i2mzllfklvv8bw0g6rjjrjkw71mvn8hsvqg6m7hhdq8lg5ajhyp"; }
      { url = root + "kqqkp.nbb.emd";
        sha256 = "14y51vjw0r605pbjz0gvhc0x2w14ijxn3nilvpd5sdcnfh79kaax"; }
      { url = root + "kqqkp.nbw.emd";
        sha256 = "11m1034gb608czhzrrj3fgpixq4rlvr92bzv7ga5r8wypwwycbdp"; }
      { url = root + "kqqkq.nbb.emd";
        sha256 = "1cxyavw61qqpy15vrq51a0sjsd2lhya60cf33nnh9vb370amwqj9"; }
      { url = root + "kqqkq.nbw.emd";
        sha256 = "1lrv2757bivjs9bsyh7ghj53halg3jz29xhnx7xhjrf48rpv6nxw"; }
      { url = root + "kqqkr.nbb.emd";
        sha256 = "1m2r0myc2piqn4pcd3b9ngivrjg1j5viwsi9740dlb730dbvkzna"; }
      { url = root + "kqqkr.nbw.emd";
        sha256 = "1767n2993dw5akbd3h6w570nbs5bncd8qid1dhgzfs9yxxzjplns"; }
      { url = root + "kqqnk.nbb.emd";
        sha256 = "047950dbkh0mzpfb1klm51lmqzx1d90w6j7r4z8mc1nw4knh5cpp"; }
      { url = root + "kqqnk.nbw.emd";
        sha256 = "0yd35ra0s0qckqymzi634bxp127arbrqzyj3s3xww82qsn6lbm07"; }
      { url = root + "kqqpk.nbb.emd";
        sha256 = "08wbdhpa8vna39i226hg71r8a7ydp2vd2gh5prskr39vqj0k5pa3"; }
      { url = root + "kqqpk.nbw.emd";
        sha256 = "1vyd4pvb8mhbdkm85njnqxg755biw0y68ylxfbnar8wna4dl27ds"; }
      { url = root + "kqqqk.nbb.emd";
        sha256 = "0l0ichgik395z90h37zj6x4kcxpf0121zw57s8s0y51iwz61ikg9"; }
      { url = root + "kqqqk.nbw.emd";
        sha256 = "0jmkd9n96al6sggva1kmdax8vxqprai9hhkxxvsk35wivcp8akk8"; }
      { url = root + "kqqrk.nbb.emd";
        sha256 = "02wahvwixy5l3q9h57ayr2mxqs79zg8m2qh8cv3mms39csa9axzh"; }
      { url = root + "kqqrk.nbw.emd";
        sha256 = "05rypafy4lgb53x8zx2qlvdrjm91aqr61hc7iwlpfikqqcbiksiw"; }
      { url = root + "kqrbk.nbb.emd";
        sha256 = "0bk77dvdg5qx86rss0q9v8zl079g85p7snfgjpr30jpfv2z0a6p6"; }
      { url = root + "kqrbk.nbw.emd";
        sha256 = "0mgamh4fqr6g063ic5qapdjng6jw35f82f0wjq8j9gv5w83s0vqs"; }
      { url = root + "kqrk.nbb.emd";
        sha256 = "0vsadlphh4b6cgs4pizw44nfw4lhpq65dws44fc9z74sf32q0ibr"; }
      { url = root + "kqrk.nbw.emd";
        sha256 = "1qq8jqzqzkcarhnc7ad6xp3s2f8r4crrxgj0ajciz2pkyc98xdh6"; }
      { url = root + "kqrkb.nbb.emd";
        sha256 = "0bxmkjmqx7gjdaz78d31sbk7v67crx24dpbhswfg6b3xkhi8cy3f"; }
      { url = root + "kqrkb.nbw.emd";
        sha256 = "0hhz4yxrcwvvc4b36ixlh3g8gdm4krhvip80xazcy538dwl26b29"; }
      { url = root + "kqrkn.nbb.emd";
        sha256 = "13h7qa2zy9akdrvrwl7wmlpncgljjamc7asa9vpd76bi5mp0wrap"; }
      { url = root + "kqrkn.nbw.emd";
        sha256 = "0ihcp5wh61cgq439nh5rn3qqhpyjl5h4xz9ayyma298fm2xw7w89"; }
      { url = root + "kqrkp.nbb.emd";
        sha256 = "1wjrcrjgq1gj0jqbw0mi8ah79qv80zp921bzjxsx9vjm35hdbbhl"; }
      { url = root + "kqrkp.nbw.emd";
        sha256 = "0qwc76wyy60vicxyxx80gm6f40fw3izs6xndhhkfh86cj7sjl3l5"; }
      { url = root + "kqrkq.nbb.emd";
        sha256 = "0drzfjrm6mh8q1vb36ycvfsipp6z4ij4a200zxypaxaimnxssq3x"; }
      { url = root + "kqrkq.nbw.emd";
        sha256 = "0n12rixcd2k3bgm00k2z9cnlzx1av5y62r8adnx6h2grlgcyd26j"; }
      { url = root + "kqrkr.nbb.emd";
        sha256 = "0zvzx89gp4saggjb062nafy3xncv01fmbymsmnlswmq80xdkcn4d"; }
      { url = root + "kqrkr.nbw.emd";
        sha256 = "0by6f36850d4fdraqj8rqv7ryaplqxlmkm00prm0pcmlb3y5czc7"; }
      { url = root + "kqrnk.nbb.emd";
        sha256 = "0z5599ci1n7qgpn3inch8zc3ciyy1b5gjbix78k3b5ig4ra2idv6"; }
      { url = root + "kqrnk.nbw.emd";
        sha256 = "18a5bm0rlh4wf5im54acq0w0l6lnjjk4dxaxcph67q4smfbfacv3"; }
      { url = root + "kqrpk.nbb.emd";
        sha256 = "10rbm2j3rz04jv0s70aink3y7h303zvnf29b9pim8b8pv23pwvy3"; }
      { url = root + "kqrpk.nbw.emd";
        sha256 = "1jqvxfj3fnm456livvfbp3v750mm86js2qb7va5nq9wilif13chb"; }
      { url = root + "kqrrk.nbb.emd";
        sha256 = "0h2g8v9i6ic2fmjgzwh1hcwaka2m8n8l28nvbbkq3447hrwl8sba"; }
      { url = root + "kqrrk.nbw.emd";
        sha256 = "137iicxbws20rv93b5qas6dpk5a7qj18rcbj632117hkiw3ddjly"; }
      { url = root + "krbbk.nbb.emd";
        sha256 = "1i0yjbvkrqz4m61qk6flz88zsb3nwskj6rrn3bz4fzv63m0yhcpk"; }
      { url = root + "krbbk.nbw.emd";
        sha256 = "00rna709hpxw06sg5cnzn9xzgn2pib4n5yyffjz638sgivgh62k4"; }
      { url = root + "krbk.nbb.emd";
        sha256 = "1xq45jiwg96084jm0qkacjmxl86v0mp1nrr6k85dpn99bmyzx5xw"; }
      { url = root + "krbk.nbw.emd";
        sha256 = "0jnxrpwad8cpl6yp31bs5g0h89jjr8061lj69n8wdmmwhvjafvk0"; }
      { url = root + "krbkb.nbb.emd";
        sha256 = "0gdwy9q7xf35fpb78g02jn07d969p7zzhnn4asbk5y3fmix209l2"; }
      { url = root + "krbkb.nbw.emd";
        sha256 = "0kryfbjli1l05nqarz96q6fnviwzgjvmbljbmapirw40ma68nx4r"; }
      { url = root + "krbkn.nbb.emd";
        sha256 = "01fll6vvqiyxpmn6qmwhrzd7f3j3irpbdvc2jn2hqzjdmsr0kz59"; }
      { url = root + "krbkn.nbw.emd";
        sha256 = "13yipfw7v5w2hcgmnml3ka1rq1g5djcf81nkanrlmrkqaksxbc0m"; }
      { url = root + "krbkp.nbb.emd";
        sha256 = "1bpa5x4zm9nap62hf3iiyzzwcp0fsh5bww0sdnvlzaclw9mbc1g8"; }
      { url = root + "krbkp.nbw.emd";
        sha256 = "0y157ai66amm5lryigc7nizj79mfbcny925qqcsgbi8l2yhl7hk1"; }
      { url = root + "krbkq.nbb.emd";
        sha256 = "199gckvazpsv1f3jkfxw9p3hyfshpvqm2i9wqjgzlm69dckbbj4x"; }
      { url = root + "krbkq.nbw.emd";
        sha256 = "1m72pzaxlrppwpaqgdcxcjr9n5cnyxs8p0kxybgkl17vfvpc5jmw"; }
      { url = root + "krbkr.nbb.emd";
        sha256 = "04wpcfq3y4nx1q57vina4z75lv3mrzljfzw5s73s5m0fhfq54i9v"; }
      { url = root + "krbkr.nbw.emd";
        sha256 = "1wii5h5cyxxxgjp53ap43v0wnpj7amxyd8kg9bxsamcfz3wj1v70"; }
      { url = root + "krbnk.nbb.emd";
        sha256 = "0s2jrbyjn4d2kik7ic4i1d4w6yx2841cdwb7lalpw3jf74ag2cv4"; }
      { url = root + "krbnk.nbw.emd";
        sha256 = "1py0lnsahky21dvk5kdcfgbrca1cks7ihjslpvins91l58yzldh9"; }
      { url = root + "krbpk.nbb.emd";
        sha256 = "1v3j61j125i9hbmqm11ay2ng65djq55mwxfr5v8173whqjk9cjc5"; }
      { url = root + "krbpk.nbw.emd";
        sha256 = "1zvinpcr9mzm6jgicq6y6jfl6dsd7pyn648bfayszfgndyr2b125"; }
      { url = root + "krk.nbb.emd";
        sha256 = "042qliismf63y6vims4bg31lj1w9r2y45p32frqxgk79hvb567yv"; }
      { url = root + "krk.nbw.emd";
        sha256 = "1fam4n038dg4g1nc1zn55lyjagv4j4lkbq28rhiaz7mhj3z4r3zz"; }
      { url = root + "krkb.nbb.emd";
        sha256 = "0y44rbly8ggzjg2i5vhxibia551ii28dnpyzls3b74a6078zy0wy"; }
      { url = root + "krkb.nbw.emd";
        sha256 = "12bqs411yhv6k0b2jhil1l7hpk4cj3i8x0bcj168jnmikzhprvgq"; }
      { url = root + "krkn.nbb.emd";
        sha256 = "1wcghsgr9g09pbyhak1hyxw3rvfis6zplc3zgzx3qphp69rivk3k"; }
      { url = root + "krkn.nbw.emd";
        sha256 = "1jkwz4kjl91kxxascg21zj6c6qgx9s0k91jjbic6ybsmpv4wj4qc"; }
      { url = root + "krkp.nbb.emd";
        sha256 = "1jmaansnxspb7x2ka8y44vssgk78wfcrmdczj60zyzg1bj3n5fl8"; }
      { url = root + "krkp.nbw.emd";
        sha256 = "14yi4fsax0w9sd5bv463ajs6r4q0wxj3n19np9anc1zfvb3yk846"; }
      { url = root + "krkr.nbb.emd";
        sha256 = "12y29sgqhxcvilg089766nn14scy8b0dxmla1isjmgq9qb4yi9vy"; }
      { url = root + "krkr.nbw.emd";
        sha256 = "12y29sgqhxcvilg089766nn14scy8b0dxmla1isjmgq9qb4yi9vy"; }
      { url = root + "krnk.nbb.emd";
        sha256 = "0gvm4y8p5a9769nqhgnx6xj6nlldgrh75k3z8c8hj2xd9cyj01pp"; }
      { url = root + "krnk.nbw.emd";
        sha256 = "0p7j4x0xdq5krsvmj44qkcaqmww7rplrjdr08ix3jyjf31kk2x13"; }
      { url = root + "krnkb.nbb.emd";
        sha256 = "0w9gybr4i7d8zjpbbyg1m4263bx2gpmnh91vd0xmpwi0ykrxrl57"; }
      { url = root + "krnkb.nbw.emd";
        sha256 = "19wp8swng0q2wzxwx89km5fqlqfb4vcamky9h7pvas2sgh8frfmq"; }
      { url = root + "krnkn.nbb.emd";
        sha256 = "0g3b48symag31lcgbimpmmqsqdmihsr6g9k5a15l0mfkisfwadlf"; }
      { url = root + "krnkn.nbw.emd";
        sha256 = "1vryhaw1aj4bhv2ghb10zxyx930s2f4xqg7v9cxfnr9q5w2qv7xh"; }
      { url = root + "krnkp.nbb.emd";
        sha256 = "13b8vahj7hj4f12kiaigx1nphdrf8z30j68zav9n617kpf5s35i0"; }
      { url = root + "krnkp.nbw.emd";
        sha256 = "1qcnjwkg0pxp1hq4xws9dgq4bx6pxn0am3mcj1n837qcmv46mf7c"; }
      { url = root + "krnkq.nbb.emd";
        sha256 = "150d9z4v6fk16sdxq1w96gl2pl9nsf0jimy8kdgc8a19i1ab1rjc"; }
      { url = root + "krnkq.nbw.emd";
        sha256 = "13dn9hgk4i26axwymv0gvdkl0zr5shggvm5lpwa15gigmrva73bh"; }
      { url = root + "krnkr.nbb.emd";
        sha256 = "14ja7chmg7aklg6swlc3lpik4akj8zv3x2qppsip0vi3j05lnqyv"; }
      { url = root + "krnkr.nbw.emd";
        sha256 = "04qxh0kzk2p7m5zdrzg0faqva91qals4njnwf4vgfr65lmd4hyfn"; }
      { url = root + "krnnk.nbb.emd";
        sha256 = "1f35pqprkf1clx0mzzkgx9mn8ncqdiyc2cbxcp5a4x1kzli7zp34"; }
      { url = root + "krnnk.nbw.emd";
        sha256 = "16y28mqjl7fbl8rlwv51bn17sx0fpvfi0izyq1f5043l7fmpshfr"; }
      { url = root + "krnpk.nbb.emd";
        sha256 = "097rmr9zb550qn41kn11c15qp8l5582wqncg5li46iq9mfxcskiw"; }
      { url = root + "krnpk.nbw.emd";
        sha256 = "0hj3bhqvgdd64qa47irwx08nz4fqxhm0ddmpjq0jb757wlqw5f05"; }
      { url = root + "krpk.nbb.emd";
        sha256 = "1qz218amn2ii66g2fr2ifq6csr0n5n9ip9jcjxkxgpmawiwjhcm1"; }
      { url = root + "krpk.nbw.emd";
        sha256 = "19vh7k73gjyjwqzdpf0pv2i7zrqb2ns6a6r3n4jgwwd2n35inr1i"; }
      { url = root + "krpkb.nbb.emd";
        sha256 = "1y6kknnkb0ikk7az6syc3drhp4v3avpffa5pghpr2pm6i8xzx3nm"; }
      { url = root + "krpkb.nbw.emd";
        sha256 = "0fnbyhgjlnrnddkpbbyabyg31nmi61w9ra8ylicv6ysgyn4bcps4"; }
      { url = root + "krpkn.nbb.emd";
        sha256 = "08cn0pa6y1hxq7clgj70hdxm13a6zi9c8z2mmf3qgsjjkrj2wgc5"; }
      { url = root + "krpkn.nbw.emd";
        sha256 = "16ybnwl7sf832z546igrwclahhymp734dcg6rhrakxabrv0y144z"; }
      { url = root + "krpkp.nbb.emd";
        sha256 = "125qzj83kc5y5rx6jn078pjj6lph1gslmglx24n5n399382kllkn"; }
      { url = root + "krpkp.nbw.emd";
        sha256 = "1kbahpn99r37syb1yypabw55g4diwbp6q99nr6f6rn19wp0b44mk"; }
      { url = root + "krpkq.nbb.emd";
        sha256 = "1wsxy8ycz8l6wn6c58w4n0gdsdb8lik6b046q132qjw8mnn07gv1"; }
      { url = root + "krpkq.nbw.emd";
        sha256 = "0l8sg8sv6yy2wsrg7p9j2w5s61sd3jak09z1i347k0g0190m77m8"; }
      { url = root + "krpkr.nbb.emd";
        sha256 = "1mv4jcgkilsw3d4m879r2cwslz71v0rg5hwk9r6lhpg22qam3kz1"; }
      { url = root + "krpkr.nbw.emd";
        sha256 = "1nj906wq21h9xfzihc3wcp9s2bwgy7c68j4a6vlxq3zy1c8k53yx"; }
      { url = root + "krppk.nbb.emd";
        sha256 = "0x63qm3zwp70y3a33s29bv7lhg1vjnvi4gkxxgh6s0590y7s8pj4"; }
      { url = root + "krppk.nbw.emd";
        sha256 = "1z4nhf2gygbdgk6j3bdxhllx154ajkrrz3j0y715r20m0fxfl6x8"; }
      { url = root + "krrbk.nbb.emd";
        sha256 = "0gxam25i89sqmmmd781yyk2k2zyj76l9w9hngqkzagiz0fhh9ycz"; }
      { url = root + "krrbk.nbw.emd";
        sha256 = "1v7rfv5b4wjsgfy21fi3xyxbfj76mvkxhfz52612p4rnzp78bb56"; }
      { url = root + "krrk.nbb.emd";
        sha256 = "0ms9cjndxiflssymcx7aakf6bjwb5043nz5i4jvix89wvp6lgfa1"; }
      { url = root + "krrk.nbw.emd";
        sha256 = "18bh2y3v2ak6j1q1rlnkp02vijbbqr69i4cg1pvj943c83xz18l3"; }
      { url = root + "krrkb.nbb.emd";
        sha256 = "0hdr8v5bgybma3sdl8mk0v3msjvdva89zs1wd52m6jbdgwb5hzca"; }
      { url = root + "krrkb.nbw.emd";
        sha256 = "1g8bkyzq585az5rrglxd71ydj2fhhgqzdfmkgihbi7ncjym9kpw7"; }
      { url = root + "krrkn.nbb.emd";
        sha256 = "0bz8np2sqj8viwszx4jj9wxj774kv548pjzrmc6xh11p0sfjx3rj"; }
      { url = root + "krrkn.nbw.emd";
        sha256 = "1qf4d6zlvwlgrq0f732wafpznkqd3qnf7na4bgd4p1pb105ickg4"; }
      { url = root + "krrkp.nbb.emd";
        sha256 = "1kw434r77f61b5agly6lqkvn4b1rwssd511lcv16mvvf56xlqnb4"; }
      { url = root + "krrkp.nbw.emd";
        sha256 = "1yzqpp01gckk25zjy8j820y37m4vj6rgc6zpphwll45rn1ahwk0p"; }
      { url = root + "krrkq.nbb.emd";
        sha256 = "1ynhjzzmjpd6yw0d2w5xhlms3sqjc8gksfqgq3wmx7ym23wya2qq"; }
      { url = root + "krrkq.nbw.emd";
        sha256 = "01wil4pbcnrqynj1xpkglk2r36b36cz9gjr2g76rrz5xhdy5q8vj"; }
      { url = root + "krrkr.nbb.emd";
        sha256 = "0iyqadmpddy9i330nv1qrsjfkk2vlkxfxjphx3q349lplq6a9s16"; }
      { url = root + "krrkr.nbw.emd";
        sha256 = "1fg4byzzmjlzz8hs2vhpysmf8py9ylkf5pdw3rv88dxr4cp1wciq"; }
      { url = root + "krrnk.nbb.emd";
        sha256 = "1jb8rq7sy28c9wr7yih8w5bi8jbcf4xzf8sccanz32qxp0159f0h"; }
      { url = root + "krrnk.nbw.emd";
        sha256 = "17g7l0szgqczykjgxdhpihs5hh2snc35cy3hggnvah3j8bv6ksb4"; }
      { url = root + "krrpk.nbb.emd";
        sha256 = "1q7vk3pawab9nbpdn3cw2kf205yx6lznr6gkd9qbjj3754s9zswh"; }
      { url = root + "krrpk.nbw.emd";
        sha256 = "0wl23j0a67mm01655p4ivjrlsacvm7lxglhrg6cni61qkdqr6vqz"; }
      { url = root + "krrrk.nbb.emd";
        sha256 = "1ggm5q38wc65rkp87n5d2l71kcl7nqjkvwa31hmlagq2735vd0gd"; }
      { url = root + "krrrk.nbw.emd";
        sha256 = "1h7psv25a4wajg6ggk2q0cllf5mng4qjas3yi9nvi7kc766p85ax"; }
    ]);

  patches = [ ./strcpy.patch ./malloc.patch ];

  buildInputs = [ unzip ];

  buildPhase =
    if stdenv.isDarwin
    then "make darwin"
    else if stdenv.isLinux
           then "make linux-amd64"
           else "make";

  installPhase = ''
    ensureDir $out/bin
    cp -p ./crafty $out/bin

    ensureDir $out/share/crafty
    cd $out/share/crafty

    $out/bin/crafty "books create ${startPgn} 60"
    rm -f *.001

    ${if fullVariant then ''
        unzip ${enormousPgn}
        $out/bin/crafty "book create enormous.pgn 60"
        rm -f *.001 enormous.pgn
        
        ensureDir $out/share/crafty/TB
        ${stdenv.lib.fold
          (tb: acc: acc + "\nln -s "
                        + toString tb
                        + " $out/share/crafty/TB/`echo "
                        + toString tb
                        + " | sed 's/.*-//'`")
          ""
          tableBases345}
      ''
      else ''
        cp -p ${bookBin} $out/share/crafty/book.bin
      ''}

    mv $out/bin/crafty $out/bin/.crafty-wrapped
    cat - > $out/bin/crafty <<EOF
    #! ${stdenv.shell}
    exec $out/bin/.crafty-wrapped bookpath=$out/share/crafty ${stdenv.lib.optionalString fullVariant "egtb=on tbpath=$out/share/crafty/TB"} "\$@"
    EOF
    chmod +x $out/bin/crafty
  '';

  meta = {
    homepage = http://www.craftychess.com/;
    description = "Crafty is a free, open-source computer chess program developed by Dr. Robert M. Hyatt";
    license = stdenv.lib.licenses.unfree;
    maintainers = [ stdenv.lib.maintainers.jwiegley ];
  };
}
