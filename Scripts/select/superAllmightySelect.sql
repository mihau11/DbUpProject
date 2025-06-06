SELECT
    b.imie,
    st.tors,
    j.glowa,
    lr.reka AS lewaReka,
    pr.reka AS prawaReka,
    ln.noga AS lewaNoga,
    pn.noga AS prawaNoga,
    s1.lokiec AS lokiecLewejReki,
    s2.lokiec AS lokiecPrawejReki,
    h1.kolano AS kolanoLewejNogi,
    h2.kolano AS kolanoPrawejNogi
FROM bossyTable b
INNER JOIN lazyTable ln ON b.lewaNogaId = ln.id
INNER JOIN lazyTable pn ON b.prawaNogaId = pn.id
INNER JOIN busyTable lr ON b.lewaRekaId = lr.id
INNER JOIN busyTable pr ON b.prawaRekaId = pr.id
INNER JOIN stoicTable st ON b.torseId = st.id
INNER JOIN jumpingTable j ON b.glowaId = j.id

-- Lokiec z lewej rêki (busyTable.lokiecId -> sadTable.id)
INNER JOIN sadTable s1 ON lr.lokiecId = s1.id
-- Lokiec z prawej rêki (busyTable.lokiecId -> sadTable.id)
INNER JOIN sadTable s2 ON pr.lokiecId = s2.id

-- Kolano z lewej nogi (lazyTable.kolanoId -> happyTable.id)
INNER JOIN happyTable h1 ON ln.kolanoId = h1.id
-- Kolano z prawej nogi (lazyTable.kolanoId -> happyTable.id)
INNER JOIN happyTable h2 ON pn.kolanoId = h2.id;