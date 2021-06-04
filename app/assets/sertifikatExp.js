const sertifikatExp = (nama, id, no_sertifikat, tanggal_expire, month) => {    
    return `
    <table style="background-color: white; font-family: Arial, Helvetica, sans-serif; padding: 5px;" >
    <tr style="background-color: Tomato; color:white; font-weight: bold; text-align: left;">
      <th colspan="2" style="padding: 20px; font-size: 20px">SIMPANDA</th>
    </tr>
    <tr>
      <th colspan="2" style="padding: 20px; text-align: left;">Salam, ${nama}</th>
    </tr>
    <tr>
      <td colspan="2" style="padding: 5px 20px; text-align: left;">Sertifikat berikut :</td>
    </tr>
    <tr>
      <th style="padding: 5px 20px; text-align: left;">Id</th>
      <th style="text-align: left;">: ${id}</th>
    </tr>
    <tr>
      <th style="padding: 5px 20px; text-align: left;">Nomor sertifikat</th>
      <th style="text-align: left;">: ${no_sertifikat}</th>
    </tr>
    <tr>
      <th style="padding: 5px 20px; text-align: left;">Tanggal Kadaluarsa</th>
      <th style="text-align: left;">: ${tanggal_expire}</th>
    </tr>
    
    <tr>
      <td colspan="2" style="padding: 20px; text-align: left;">Kami menginformasikan bahwa sertifikat berikut akan kadaluarsa dalam waktu <span style="color: red; font-weight: bold;">${month} Bulan lagi</span>.</td>
    </tr>
    <tr style="background-color: DodgerBlue; color:white; font-weight: bold;">
      <td colspan="2" style="padding: 20px; text-align: center;">
        <div style="padding: 10px 0px">
          Smpanda, Jakarta
        </div>
        <div style="padding: 10px 0px">
          © 2021 SIMPANDA Indonesia
        </div>
      </td>
    </tr>
    </table>
    `
}
module.exports = sertifikatExp