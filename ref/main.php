<style>
    .item{
        display: flex;
        margin: 3px auto;
        width: 85%;
        background-color: salmon;
        height: 50px;
    }
</style>
<?php
$nav='';
$typeId=$_GET['type']??0;
if($typeId==0){
    $nav="全部商品";
}else{
    $type=$Type->find($typeId);
    if($type['big_id']==0){
        $nav=$type['name'];
    }else{
        $big=$Type->find($type['big_id']);
        $nav=$big['name'] ." > ". $type['name'];
    }
    
}
?>
<h2><?=$nav;?></h2>

<div class="item">
    <div></div>
    <div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>