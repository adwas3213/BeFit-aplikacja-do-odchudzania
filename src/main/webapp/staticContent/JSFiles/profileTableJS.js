function editRecord(id, data, weight,linkToEditRecord) {
    let html = `
            <form action="${linkToEditRecord}" method="post">
                        
                        <div class="modal-body" id="editRecordData">
                            <input type="date" name="dateOfRecord" value="${data}" required >
                            <input type="number" name="numberOfRecord" required min="30" placeholder="70" value="${weight}" max=450 step="0.1" >
                            <input type="number" name="id" value="${id}" hidden>
                        </div>

                        
                        <div class="modal-footer">

                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Anuluj</button>
                            <button type="submit" class="btn btn-success" data-bs-dismiss="modal">Edytuj</button>
                        </div>
                    </form>

            `
    document.getElementById('editRecordData').innerHTML = html;
}

function editWeight(id, data, weight,linkToEditRecord) {

    let html = `
            <form action="${linkToEditRecord}" method="post">
                        
                        <div class="modal-body" id="editRecordData">
                            <input type="date" name="dateOfRecord" readonly value="${data}" required >
                            <input type="number" name="numberOfRecord" required min="30" placeholder="70" value="${weight}" max=450 step="0.1" >
                            <input type="number" name="id" value="${id}" hidden>
                        </div>

                        
                        <div class="modal-footer">

                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Anuluj</button>
                            <button type="submit" class="btn btn-success" data-bs-dismiss="modal">Edytuj</button>
                        </div>
                    </form>

            `
    document.getElementById('editRecordData').innerHTML = html;
}
function deleteRecord(id, date, weight,linkToDeleteRecord) {
    let tableBody = `   <tr>
                            <td style="border: solid 2px;">${id}</td>
                            <td style="border: solid 2px;">${date}</td>
                            <td style="border: solid 2px;">${weight}</td>
                                </tr>`
    let html =

        `
            <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <h4 class="modal-title">Potwierdz usuniecie zapisu wagi</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <p>Czy na pewno chcesz usunac pomiar wagi ? </p>
                    <table id="deleteRecordData" class="table "  style="border: solid 2px;">
                        <thead>
                            <tr>
                                <td style="border: solid 2px;">id</td>
                                <td style="border: solid 2px;">Data</td>
                                <td style="border: solid 2px;">waga</td>
                            </tr>
                        </thead>
                        <tbody id="deleteRecordData">
                        ${tableBody}
                        </tbody>

                    </table>
                </div>
                
                <div class="modal-footer">
                    <form action="${linkToDeleteRecord}" method="post">
                    <input name="id" value="${id}" hidden>
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Anuluj</button>
                        <button type="submit" class="btn btn-success" data-bs-dismiss="modal">Usuń</button>
                    </form>
                </div>

            </div>
        </div>
           `
    document.getElementById('deleteRecord').innerHTML = html;

}