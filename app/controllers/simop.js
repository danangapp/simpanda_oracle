const f = require('./function');
const axios = require('axios').default;
require('dotenv').config();

var auth = {
    username: 'vms_user',
    password: 'vms_user'
}
module.exports = {
    options: function (url, data) {
        return {
            method: 'POST',
            headers: { 'content-type': 'application/json' },
            auth: auth,
            data: JSON.stringify(data),
            url,
        }
    },
    insertPanduLaut: function (data, statusInsert = 1, cabang) {
        var url
        if (statusInsert == 1) {
            url = `${process.env.ESB}restv2/simpanda/insertPanduLaut/` + cabang;
        } else {
            url = `${process.env.ESB}restv2/simpanda/updatePanduLaut/` + cabang;
        }
        const options = this.options(url, data);
        console.log('send pandu laut', url, data)
        return axios(options)
    },
    insertPandu: function (data, statusInsert = 1, cabang) {
        var url
        if (statusInsert == 1) {
            url = `${process.env.ESB}restv2/simpanda/insertPandu/` + cabang;
        } else {
            url = `${process.env.ESB}restv2/simpanda/updatePandu/` + cabang;
        }    
        const options = this.options(url, data);
        console.log('send pandu', url, data)
        return axios(options)
    },
    insertFasilitasKapal: function (data, statusInsert = 1, cabang) {
        var url
        if (statusInsert == 1) {
            url = `${process.env.ESB}restv2/simpanda/insertFasilitas/` + cabang;
        } else {
            url = `${process.env.ESB}restv2/simpanda/updateFasilitas/` + cabang;
        }
        const options = this.options(url, data);
        console.log('send asset kapal', url, data)
        return axios(options)
    },
    cekBody: async function (kode, rows, cabang = "cabang") {
        var dt;

        var esbBody = {
            "kdFas": kode,
            "nmFas": rows.nama_asset || "-",
            "daya": `${rows.daya}` || "0",
            "kdCabang": rows.cabang_id < 10 ? `0${rows.cabang_id}` : `${rows.cabang_id}`,
            "enable": rows.enable ? rows.enable.toString() : "0",
            "daya2": `${rows.daya}` || "0",
            "statusMilik": rows.simop_status_milik || "1",
            "kdAgen": rows.simop_kd_agen || "1",
            "assetNumber": rows.assetNumber || "1",
            "kdPuspelJai": rows.simop_kd_puspel_jai || "0",
            "newPuspelJai": rows.simop_new_puspel_jai || "1",
            "newAssetJai": rows.simop_new_asset_jai || "1"
        }
        // console.log(esbBody);
        if (cabang == "cabang") {
            if (rows.simop_kd_fas) {
                dt = { "opUpdateMstFasilitasCabangRequest": { "esbBody": esbBody } }
            } else {
                dt = { "opInsertMstFasilitasCabangRequest": { "esbBody": esbBody } }
            }
        } else {
            if (rows.simop_kd_fas) {
                dt = { "opUpdateMstFasilitasProdRequest": { "esbBody": esbBody } }
            } else {
                dt = { "opInsertMstFasilitasProdRequest": { "esbBody": esbBody } }
            }
        }

        return dt;
    }
};
