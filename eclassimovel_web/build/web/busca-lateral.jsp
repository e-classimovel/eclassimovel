<form action="filtroPostTeste">
    <div class='busca-lateral'>
        <div class='box-busca'>
            <label>Finalidade</label>
            <select class="dropdown-busca">
                <option>Comprar </option>
                <option>Alugar</option>
            </select>
        </div>
        <div class='box-busca'>
            <label>Tipo de Imóveis</label>
            <select class="dropdown-busca">
                <option>Apartamento</option>
                <option>Case</option>
                <option>Chacará</option>
            </select>
        </div>
        <div class='box-busca'>
            <label>Valor</label>
            <label>
                De:  <input type='number' />,00
            </label>
            <label>
                Até:<input type='number' />,00
            </label>
            
        </div>
        <div class='box-busca'>
            <label>UF:</label>
            <select>
                <option>SP</option>
                <option>RJ</option>
            </select>
        </div>
         <div class='box-busca'>
            <label>Cidade</label>
            <select>
                <option>Taboão da Serra</option>
                <option>São Paulo</option>
            </select>
        </div>
         <div class='box-busca'>
            <label>Bairro</label>
            <input type='text' name="teste" class='bairro' />
        </div>
        <div class='box-busca'>
            <input type='submit' value='Buscar' class='btn-buscar'/>
        </div>
    </div>
</form>