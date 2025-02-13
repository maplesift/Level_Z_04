
<!-- table.all>(tr.tt.ct>td*3)+(tr.pp.ct>td*3) -->
<table class="all">
    <tr class="tt ct">
        <td>帳號</td>
        <td>密碼</td>
        <td>註冊日期</td>
        <td>管理</td>
    </tr>
    <?php
    $rows=$Mem->all();    
    foreach($rows as $row):
    ?>
    <tr class="pp ct">
        <td><?=$row['name'];?></td>
        <td><?=$row['acc'];?></td>
        <td><?=date("Y-m-d",strtotime($row['regdate']));?></td>
        <td>
            <button onclick="location.href='?do=edit_mem&id=<?=$row['id'];?>'">
            修改
            </button>
            <button>
            刪除
            </button>
        </td>
    </tr>
    <?php
    endforeach;
    ?>
</table>