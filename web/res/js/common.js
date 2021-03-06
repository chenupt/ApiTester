function commonGetTbody(dataList, columns){
    var tbody = $('<tbody>');
    $.each(dataList, function(i, data){
        var tr = $('<tr>');
        $.each(columns, function(index, column){
            var tdValue = "";
            var td = $('<td>');

            if(jQuery.isFunction(column['render'])){
                column['render'](data, data[column['name']], td);
            } else {
                tdValue = data[column['name']];
                if(column['name']=='specialty') {
                    var div = $('<div style="display: inline-block;width:300px"></div>');
                    div.html(tdValue);
                    td.append(div);
                }else
                    td.html(tdValue);
            }
            tr.append(td);
        });
        tbody.append(tr);
    });

    return tbody;
}

function commonGetThead(columns){
    var thead = $('<thead>');
    var tit = $('<tr>');
    $.each(columns, function(index, column){
        var th = $('<th>');
        th.html(column['title']);
        tit.append(th);
    });
    thead.append(tit);

    return thead;
}

function createServiceItem(serviceItem){
    var div = $('<div id="' + serviceItem.name + '">');

    var nameBlock = $('<blockquote>');
    nameBlock.html(serviceItem.name);
    div.append(nameBlock);

    var commentP = $('<p>');
    commentP.html(serviceItem.comment);
    div.append(commentP);

    return div;
}


function createTable(dataList) {
    var table = $('<table class="table table-condensed table-hover table-bordered">');
    var columns = [
        {
            name: 'intro',
            title: '#'
        },
        {
            name: 'type',
            title: '类型',
            render: renderEntity
        },
        {
            name: 'comment',
            title: '含义'
        },
        {
            name: 'default_value',
            title: '默认值'
        },
    ];
    table.append(commonGetThead(columns));
    table.append(commonGetTbody(dataList, columns));
    return table;
}

function renderEntity(row, value, parent) {
    parent.append('<a href="../../view/entity.jsp#' + value + '">' + value + '</a>');
}

function createEntityTable(dataList) {
    var table = $('<table class="table table-condensed table-hover table-bordered">');
    var columns = [
        {
            name: 'type',
            title: '类型',
            render: renderEntity
        },
        {
            name: 'comment',
            title: '含义'
        },
        {
            name: 'default_value',
            title: '默认值'
        }
    ];
    table.append(commonGetThead(columns));
    table.append(commonGetTbody(dataList, columns));
    return table;
}
