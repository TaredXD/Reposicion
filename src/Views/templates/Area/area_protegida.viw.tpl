<h1>Area Protegida</h1>
<section class="WWList">
<table>
    <thead>
        <tr>
        <th>Codigo</th>
        <th>Nombre de Area</th>
        <th>Locacion</th>
        <th>Hectaria</th>
        <th>Fecha</th>
        <th>Estado</th>
        <th><a href="index.php?page=Area-AreasForm&mode=INS"><i class="fa-solid fa-plus"></i></a></th>
        </tr>
    </thead>
        <tbody>
            <tr>
            {{foreach Area}}
              <td>{{AreaID}}</td>
              <td>{{AreaName}}</td>
              <td>{{Location}}</td>
              <td>{{SizeInHectares}}</td>
              <td>{{DesignationDate}}</td>
              <td>{{ProtectedStatus}}</td>
              <td style="display:flex; gap:1rem; justify-content:center; align-items:center">
                <a href="index.php?page=Area-AreasForm&mode=UPD%codigo={{AreaID}}">
                     <i class="fas fa-solid fa-peNcil"></i>
                </a>
                 <a href="index.php?page=Area-AreasForm&mode=DEL%codigo={{AreaID}}">
                     <i class="fas fa-solid fa-trash"></i>
                </a>
                 <a href="index.php?page=Area-AreasForm&mode=DSP%codigo={{AreaID}}">
                     <i class="fas fa-solid fa-file-eye"></i>
                </a>
              </td>
            </tr>
            {{enfor Area}}
        </tbody>
</table>

</section>