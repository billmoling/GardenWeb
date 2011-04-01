<%@ Page language="c#" Codebehind="SelectFont.aspx.cs" AutoEventWireup="false" Inherits="WebEditor.include.SelectFont" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>SelectFont</title>
		 
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		 
		<link rel="stylesheet" href="Editor.css" type="text/css">
	</HEAD>
	<body class="alertbgc">
		<form id="form1" runat="server">
			<div class="lfd">
				<div class="selface_kong1"></div>
				<div id="特殊符号" class="selface_bq_a">特殊符号
					<script event="onmouseover" for="特殊符号" language="JavaScript" type="text/javascript">
						huifu(); 特殊符号.className="selface_bq_b"; 特殊符号图.style.display="block"; slef="特殊符号";
					</script>
					<script event="onmouseout" for="特殊符号" language="JavaScript" type="text/javascript">
						if(slef=="特殊符号"){特殊符号.className="selface_bq_b";}
					</script>
				</div>
				<div id="编号字母" class="selface_bq_a">编号字母
					<script event="onmouseover" for="编号字母" language="JavaScript" type="text/javascript">
						huifu(); 编号字母.className="selface_bq_b"; 编号字母图.style.display="block"; slef="编号字母";
					</script>
					<script event="onmouseout" for="编号字母" language="JavaScript" type="text/javascript">
						if(slef=="编号字母"){编号字母.className="selface_bq_b";}
					</script>
				</div>
				<div id="拼音线条" class="selface_bq_a">拼音线条
					<script event="onmouseover" for="拼音线条" language="JavaScript" type="text/javascript">
						huifu(); 拼音线条.className="selface_bq_b"; 拼音线条图.style.display="block"; slef="拼音线条";
					</script>
					<script event="onmouseout" for="拼音线条" language="JavaScript" type="text/javascript">
						if(slef=="拼音线条"){拼音线条.className="selface_bq_b";}
					</script>
				</div>
				<div id="其他一" class="selface_bq_a">其他一
					<script event="onmouseover" for="其他一" language="JavaScript" type="text/javascript">
						huifu(); 其他一.className="selface_bq_b"; 其他一图.style.display="block"; slef="其他一";
					</script>
					<script event="onmouseout" for="其他一" language="JavaScript" type="text/javascript">
						if(slef=="其他一"){其他一.className="selface_bq_b";}
					</script>
				</div>
				<div id="其他二" class="selface_bq_a">其他二
					<script event="onmouseover" for="其他二" language="JavaScript" type="text/javascript">
						huifu(); 其他二.className="selface_bq_b"; 其他二图.style.display="block"; slef="其他二";
					</script>
					<script event="onmouseout" for="其他二" language="JavaScript" type="text/javascript">
						if(slef=="其他二"){其他二.className="selface_bq_b";}
					</script>
				</div>
				<div class="selface_yulan">
					<table border="0" width="100%" id="table1" height="100%" cellspacing="0" cellpadding="0">
						<tr>
							<td align="center">
								<div id="font_yulan"></div>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<!--div class="selface_02"></div>
			<div id="特殊符号图" style="DISPLAY:block">
				<div class="selftface_xs">
				</div>
			</div>
			<div id="编号字母图" style="DISPLAY:none">
				<div class="selftface_xs">
				</div>
			</div>
			<div id="拼音线条图" style="DISPLAY:none">
				<div class="selftface_xs">
				</div>
			</div>
			<div id="其他一图" style="DISPLAY:none">
				<div class="selftface_xs">
				</div>
			</div>
			<div id="其他二图" style="DISPLAY:none">
				<div class="selftface_xs">
				</div>
			</div>
			<div style="DISPLAY:none"-->
			<div class="selface_02"></div>
			<div id="特殊符号图" style="DISPLAY:block">
				<div class="selftface_xs">
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('、')" onclick="crfont('、')">、</div></div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('。')" onclick="crfont('。')">。</div></div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('·')" onclick="crfont('·')">·</div></div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ˉ')" onclick="crfont('ˉ')">ˉ</div></div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ˇ')" onclick="crfont('ˇ')">ˇ</div></div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('¨')" onclick="crfont('¨')">¨</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〃')" onclick="crfont('〃')">〃</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('々')" onclick="crfont('々')">々</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('—')" onclick="crfont('—')">—</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('～')" onclick="crfont('～')">～</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('‖')" onclick="crfont('‖')">‖</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('…')" onclick="crfont('…')">…</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('‘')" onclick="crfont('‘')">‘</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('’')" onclick="crfont('’')">’</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('“')" onclick="crfont('“')">“</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('”')" onclick="crfont('”')">”</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〔')" onclick="crfont('〔')">〔</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〕')" onclick="crfont('〕')">〕</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〈')" onclick="crfont('〈')">〈</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〉')" onclick="crfont('〉')">〉</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('《')" onclick="crfont('《')">《</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('》')" onclick="crfont('》')">》</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('「')" onclick="crfont('「')">「</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('」')" onclick="crfont('」')">」</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('『')" onclick="crfont('『')">『</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('』')" onclick="crfont('』')">』</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〖')" onclick="crfont('〖')">〖</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〗')" onclick="crfont('〗')">〗</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('【')" onclick="crfont('【')">【</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('】')" onclick="crfont('】')">】</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('±')" onclick="crfont('±')">±</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('×')" onclick="crfont('×')">×</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('÷')" onclick="crfont('÷')">÷</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∶')" onclick="crfont('∶')">∶</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∧')" onclick="crfont('∧')">∧</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∨')" onclick="crfont('∨')">∨</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∑')" onclick="crfont('∑')">∑</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∏')" onclick="crfont('∏')">∏</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∪')" onclick="crfont('∪')">∪</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∩')" onclick="crfont('∩')">∩</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∈')" onclick="crfont('∈')">∈</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∷')" onclick="crfont('∷')">∷</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('√')" onclick="crfont('√')">√</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⊥')" onclick="crfont('⊥')">⊥</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∥')" onclick="crfont('∥')">∥</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∠')" onclick="crfont('∠')">∠</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⌒')" onclick="crfont('⌒')">⌒</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⊙')" onclick="crfont('⊙')">⊙</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∫')" onclick="crfont('∫')">∫</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∮')" onclick="crfont('∮')">∮</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('≡')" onclick="crfont('≡')">≡</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('≌')" onclick="crfont('≌')">≌</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('≈')" onclick="crfont('≈')">≈</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∽')" onclick="crfont('∽')">∽</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∝')" onclick="crfont('∝')">∝</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('≠')" onclick="crfont('≠')">≠</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('≮')" onclick="crfont('≮')">≮</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('≯')" onclick="crfont('≯')">≯</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('≤')" onclick="crfont('≤')">≤</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('≥')" onclick="crfont('≥')">≥</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∞')" onclick="crfont('∞')">∞</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∵')" onclick="crfont('∵')">∵</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('∴')" onclick="crfont('∴')">∴</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('♂')" onclick="crfont('♂')">♂</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('♀')" onclick="crfont('♀')">♀</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('°')" onclick="crfont('°')">°</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('′')" onclick="crfont('′')">′</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('″')" onclick="crfont('″')">″</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('℃')" onclick="crfont('℃')">℃</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('＄')" onclick="crfont('＄')">＄</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('¤')" onclick="crfont('¤')">¤</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('￠')" onclick="crfont('￠')">￠</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('￡')" onclick="crfont('￡')">￡</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('‰')" onclick="crfont('‰')">‰</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('§')" onclick="crfont('§')">§</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('№')" onclick="crfont('№')">№</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('☆')" onclick="crfont('☆')">☆</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('★')" onclick="crfont('★')">★</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('○')" onclick="crfont('○')">○</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('●')" onclick="crfont('●')">●</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('◎')" onclick="crfont('◎')">◎</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('◇')" onclick="crfont('◇')">◇</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('◆')" onclick="crfont('◆')">◆</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('□')" onclick="crfont('□')">□</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('■')" onclick="crfont('■')">■</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('△')" onclick="crfont('△')">△</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▲')" onclick="crfont('▲')">▲</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('※')" onclick="crfont('※')">※</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('→')" onclick="crfont('→')">→</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('←')" onclick="crfont('←')">←</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('↑')" onclick="crfont('↑')">↑</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('↓')" onclick="crfont('↓')">↓</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〓')" onclick="crfont('〓')">〓</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〡')" onclick="crfont('〡')">〡</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〢')" onclick="crfont('〢')">〢</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〣')" onclick="crfont('〣')">〣</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〤')" onclick="crfont('〤')">〤</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〥')" onclick="crfont('〥')">〥</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〦')" onclick="crfont('〦')">〦</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〧')" onclick="crfont('〧')">〧</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〨')" onclick="crfont('〨')">〨</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〩')" onclick="crfont('〩')">〩</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㊣')" onclick="crfont('㊣')">㊣</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㎎')" onclick="crfont('㎎')">㎎</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㎏')" onclick="crfont('㎏')">㎏</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㎜')" onclick="crfont('㎜')">㎜</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㎝')" onclick="crfont('㎝')">㎝</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㎞')" onclick="crfont('㎞')">㎞</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㎡')" onclick="crfont('㎡')">㎡</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㏄')" onclick="crfont('㏄')">㏄</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㏎')" onclick="crfont('㏎')">㏎</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㏑')" onclick="crfont('㏑')">㏑</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㏒')" onclick="crfont('㏒')">㏒</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㏕')" onclick="crfont('㏕')">㏕</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︰')" onclick="crfont('︰')">︰</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('￢')" onclick="crfont('￢')">￢</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('￤')" onclick="crfont('￤')">￤</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('℡')" onclick="crfont('℡')">℡</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㈱')" onclick="crfont('㈱')">㈱</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('‐')" onclick="crfont('‐')">‐</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ー')" onclick="crfont('ー')">ー</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('゛')" onclick="crfont('゛')">゛</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('゜')" onclick="crfont('゜')">゜</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ヽ')" onclick="crfont('ヽ')">ヽ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ヾ')" onclick="crfont('ヾ')">ヾ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〆')" onclick="crfont('〆')">〆</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ゝ')" onclick="crfont('ゝ')">ゝ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ゞ')" onclick="crfont('ゞ')">ゞ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹉')" onclick="crfont('﹉')">﹉</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹊')" onclick="crfont('﹊')">﹊</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹋')" onclick="crfont('﹋')">﹋</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹌')" onclick="crfont('﹌')">﹌</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹍')" onclick="crfont('﹍')">﹍</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹎')" onclick="crfont('﹎')">﹎</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹏')" onclick="crfont('﹏')">﹏</div>
					</div>
					<div class="selfont_eve lfd" ><div class="selfont" onmouseover="yulan('&#8364;')" onclick="crfont('&#8364;')">&#8364;</div></div>
					<div class="selfont_eve lfd" ><div class="selfont" onmouseover="yulan('￥')" onclick="crfont('￥')">￥</div></div>
					<div class="selfont_eve lfd" ><div class="selfont" onmouseover="yulan('￡')" onclick="crfont('￡')">￡</div></div>
					<div class="selfont_eve lfd" ><div class="selfont" onmouseover="yulan('&#8482;')" onclick="crfont('&#8482;')">&#8482;</div></div>
					<div class="selfont_eve lfd" ><div class="selfont" onmouseover="yulan('&reg;')" onclick="crfont('&reg;')">&reg;</div></div>
					<div class="selfont_eve lfd" ><div class="selfont" onmouseover="yulan('&copy;')" onclick="crfont('&copy;')">&copy;</div></div>
				</div>
			</div>
			<div id="编号字母图" style="DISPLAY:none">
				<div class="selftface_xs">
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ⅰ')" onclick="crfont('ⅰ')">ⅰ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ⅱ')" onclick="crfont('ⅱ')">ⅱ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ⅲ')" onclick="crfont('ⅲ')">ⅲ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ⅳ')" onclick="crfont('ⅳ')">ⅳ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ⅴ')" onclick="crfont('ⅴ')">ⅴ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ⅵ')" onclick="crfont('ⅵ')">ⅵ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ⅶ')" onclick="crfont('ⅶ')">ⅶ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ⅷ')" onclick="crfont('ⅷ')">ⅷ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ⅸ')" onclick="crfont('ⅸ')">ⅸ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ⅹ')" onclick="crfont('ⅹ')">ⅹ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒈')" onclick="crfont('⒈')">⒈</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒉')" onclick="crfont('⒉')">⒉</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒊')" onclick="crfont('⒊')">⒊</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒋')" onclick="crfont('⒋')">⒋</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒌')" onclick="crfont('⒌')">⒌</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒍')" onclick="crfont('⒍')">⒍</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒎')" onclick="crfont('⒎')">⒎</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒏')" onclick="crfont('⒏')">⒏</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒐')" onclick="crfont('⒐')">⒐</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒑')" onclick="crfont('⒑')">⒑</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒒')" onclick="crfont('⒒')">⒒</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒓')" onclick="crfont('⒓')">⒓</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒔')" onclick="crfont('⒔')">⒔</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒕')" onclick="crfont('⒕')">⒕</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒖')" onclick="crfont('⒖')">⒖</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒗')" onclick="crfont('⒗')">⒗</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒘')" onclick="crfont('⒘')">⒘</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒙')" onclick="crfont('⒙')">⒙</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒚')" onclick="crfont('⒚')">⒚</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒛')" onclick="crfont('⒛')">⒛</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑴')" onclick="crfont('⑴')">⑴</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑵')" onclick="crfont('⑵')">⑵</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑶')" onclick="crfont('⑶')">⑶</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑷')" onclick="crfont('⑷')">⑷</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑸')" onclick="crfont('⑸')">⑸</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑹')" onclick="crfont('⑹')">⑹</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑺')" onclick="crfont('⑺')">⑺</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑻')" onclick="crfont('⑻')">⑻</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑼')" onclick="crfont('⑼')">⑼</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑽')" onclick="crfont('⑽')">⑽</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑾')" onclick="crfont('⑾')">⑾</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑿')" onclick="crfont('⑿')">⑿</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒀')" onclick="crfont('⒀')">⒀</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒁')" onclick="crfont('⒁')">⒁</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒂')" onclick="crfont('⒂')">⒂</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒃')" onclick="crfont('⒃')">⒃</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒄')" onclick="crfont('⒄')">⒄</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒅')" onclick="crfont('⒅')">⒅</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒆')" onclick="crfont('⒆')">⒆</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⒇')" onclick="crfont('⒇')">⒇</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('①')" onclick="crfont('①')">①</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('②')" onclick="crfont('②')">②</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('③')" onclick="crfont('③')">③</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('④')" onclick="crfont('④')">④</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑤')" onclick="crfont('⑤')">⑤</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑥')" onclick="crfont('⑥')">⑥</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑦')" onclick="crfont('⑦')">⑦</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑧')" onclick="crfont('⑧')">⑧</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑨')" onclick="crfont('⑨')">⑨</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⑩')" onclick="crfont('⑩')">⑩</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㈠')" onclick="crfont('㈠')">㈠</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㈡')" onclick="crfont('㈡')">㈡</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㈢')" onclick="crfont('㈢')">㈢</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㈣')" onclick="crfont('㈣')">㈣</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㈤')" onclick="crfont('㈤')">㈤</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㈥')" onclick="crfont('㈥')">㈥</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㈦')" onclick="crfont('㈦')">㈦</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㈧')" onclick="crfont('㈧')">㈧</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㈨')" onclick="crfont('㈨')">㈨</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('㈩')" onclick="crfont('㈩')">㈩</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ⅰ')" onclick="crfont('Ⅰ')">Ⅰ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ⅱ')" onclick="crfont('Ⅱ')">Ⅱ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ⅲ')" onclick="crfont('Ⅲ')">Ⅲ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ⅳ')" onclick="crfont('Ⅳ')">Ⅳ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ⅴ')" onclick="crfont('Ⅴ')">Ⅴ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ⅵ')" onclick="crfont('Ⅵ')">Ⅵ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ⅶ')" onclick="crfont('Ⅶ')">Ⅶ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ⅷ')" onclick="crfont('Ⅷ')">Ⅷ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ⅸ')" onclick="crfont('Ⅸ')">Ⅸ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ⅹ')" onclick="crfont('Ⅹ')">Ⅹ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ⅺ')" onclick="crfont('Ⅺ')">Ⅺ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ⅻ')" onclick="crfont('Ⅻ')">Ⅻ</div>
					</div>
					<!--div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ａ')" onclick="crfont('Ａ')">Ａ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｂ')" onclick="crfont('Ｂ')">Ｂ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｃ')" onclick="crfont('Ｃ')">Ｃ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｄ')" onclick="crfont('Ｄ')">Ｄ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｅ')" onclick="crfont('Ｅ')">Ｅ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｆ')" onclick="crfont('Ｆ')">Ｆ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｇ')" onclick="crfont('Ｇ')">Ｇ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｈ')" onclick="crfont('Ｈ')">Ｈ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｉ')" onclick="crfont('Ｉ')">Ｉ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｊ')" onclick="crfont('Ｊ')">Ｊ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｋ')" onclick="crfont('Ｋ')">Ｋ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｌ')" onclick="crfont('Ｌ')">Ｌ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｍ')" onclick="crfont('Ｍ')">Ｍ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｎ')" onclick="crfont('Ｎ')">Ｎ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｏ')" onclick="crfont('Ｏ')">Ｏ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｐ')" onclick="crfont('Ｐ')">Ｐ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｑ')" onclick="crfont('Ｑ')">Ｑ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｒ')" onclick="crfont('Ｒ')">Ｒ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｓ')" onclick="crfont('Ｓ')">Ｓ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｔ')" onclick="crfont('Ｔ')">Ｔ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｕ')" onclick="crfont('Ｕ')">Ｕ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｖ')" onclick="crfont('Ｖ')">Ｖ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｗ')" onclick="crfont('Ｗ')">Ｗ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｘ')" onclick="crfont('Ｘ')">Ｘ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｙ')" onclick="crfont('Ｙ')">Ｙ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ｚ')" onclick="crfont('Ｚ')">Ｚ</div>
					</div-->
					<%=strDiv%>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ａ')" onclick="crfont('ａ')">ａ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｂ')" onclick="crfont('ｂ')">ｂ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｃ')" onclick="crfont('ｃ')">ｃ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｄ')" onclick="crfont('ｄ')">ｄ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｅ')" onclick="crfont('ｅ')">ｅ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｆ')" onclick="crfont('ｆ')">ｆ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｇ')" onclick="crfont('ｇ')">ｇ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｈ')" onclick="crfont('ｈ')">ｈ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｉ')" onclick="crfont('ｉ')">ｉ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｊ')" onclick="crfont('ｊ')">ｊ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｋ')" onclick="crfont('ｋ')">ｋ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｌ')" onclick="crfont('ｌ')">ｌ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｍ')" onclick="crfont('ｍ')">ｍ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｎ')" onclick="crfont('ｎ')">ｎ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｏ')" onclick="crfont('ｏ')">ｏ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｐ')" onclick="crfont('ｐ')">ｐ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｑ')" onclick="crfont('ｑ')">ｑ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｒ')" onclick="crfont('ｒ')">ｒ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｓ')" onclick="crfont('ｓ')">ｓ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｔ')" onclick="crfont('ｔ')">ｔ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｕ')" onclick="crfont('ｕ')">ｕ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｖ')" onclick="crfont('ｖ')">ｖ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｗ')" onclick="crfont('ｗ')">ｗ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｘ')" onclick="crfont('ｘ')">ｘ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｙ')" onclick="crfont('ｙ')">ｙ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ｚ')" onclick="crfont('ｚ')">ｚ</div>
					</div>
				</div>
			</div>
			<div id="拼音线条图" style="DISPLAY:none">
				<div class="selftface_xs">
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ā')" onclick="crfont('ā')">ā</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('á')" onclick="crfont('á')">á</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ǎ')" onclick="crfont('ǎ')">ǎ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('à')" onclick="crfont('à')">à</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ē')" onclick="crfont('ē')">ē</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('é')" onclick="crfont('é')">é</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ě')" onclick="crfont('ě')">ě</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('è')" onclick="crfont('è')">è</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ī')" onclick="crfont('ī')">ī</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('í')" onclick="crfont('í')">í</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ǐ')" onclick="crfont('ǐ')">ǐ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ì')" onclick="crfont('ì')">ì</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ō')" onclick="crfont('ō')">ō</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ó')" onclick="crfont('ó')">ó</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ǒ')" onclick="crfont('ǒ')">ǒ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ò')" onclick="crfont('ò')">ò</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ū')" onclick="crfont('ū')">ū</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ú')" onclick="crfont('ú')">ú</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ǔ')" onclick="crfont('ǔ')">ǔ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ù')" onclick="crfont('ù')">ù</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ǖ')" onclick="crfont('ǖ')">ǖ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ǘ')" onclick="crfont('ǘ')">ǘ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ǚ')" onclick="crfont('ǚ')">ǚ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ǜ')" onclick="crfont('ǜ')">ǜ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ü')" onclick="crfont('ü')">ü</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ê')" onclick="crfont('ê')">ê</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ɑ')" onclick="crfont('ɑ')">ɑ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('')" onclick="crfont('')"></div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ń')" onclick="crfont('ń')">ń</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ň')" onclick="crfont('ň')">ň</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ǹ')" onclick="crfont('ǹ')">ǹ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ɡ')" onclick="crfont('ɡ')">ɡ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('─')" onclick="crfont('─')">─</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('━')" onclick="crfont('━')">━</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('│')" onclick="crfont('│')">│</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┃')" onclick="crfont('┃')">┃</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┄')" onclick="crfont('┄')">┄</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┅')" onclick="crfont('┅')">┅</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┆')" onclick="crfont('┆')">┆</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┇')" onclick="crfont('┇')">┇</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┈')" onclick="crfont('┈')">┈</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┉')" onclick="crfont('┉')">┉</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┊')" onclick="crfont('┊')">┊</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┋')" onclick="crfont('┋')">┋</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┌')" onclick="crfont('┌')">┌</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┍')" onclick="crfont('┍')">┍</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┎')" onclick="crfont('┎')">┎</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┏')" onclick="crfont('┏')">┏</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┐')" onclick="crfont('┐')">┐</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┑')" onclick="crfont('┑')">┑</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┒')" onclick="crfont('┒')">┒</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┓')" onclick="crfont('┓')">┓</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('└')" onclick="crfont('└')">└</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┕')" onclick="crfont('┕')">┕</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┖')" onclick="crfont('┖')">┖</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┗')" onclick="crfont('┗')">┗</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┘')" onclick="crfont('┘')">┘</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┙')" onclick="crfont('┙')">┙</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┚')" onclick="crfont('┚')">┚</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┛')" onclick="crfont('┛')">┛</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('├')" onclick="crfont('├')">├</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┝')" onclick="crfont('┝')">┝</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┞')" onclick="crfont('┞')">┞</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┟')" onclick="crfont('┟')">┟</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┠')" onclick="crfont('┠')">┠</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┡')" onclick="crfont('┡')">┡</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┢')" onclick="crfont('┢')">┢</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┣')" onclick="crfont('┣')">┣</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┤')" onclick="crfont('┤')">┤</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┥')" onclick="crfont('┥')">┥</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┦')" onclick="crfont('┦')">┦</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┧')" onclick="crfont('┧')">┧</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┨')" onclick="crfont('┨')">┨</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┩')" onclick="crfont('┩')">┩</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┪')" onclick="crfont('┪')">┪</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┫')" onclick="crfont('┫')">┫</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┬')" onclick="crfont('┬')">┬</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┭')" onclick="crfont('┭')">┭</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┮')" onclick="crfont('┮')">┮</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┯')" onclick="crfont('┯')">┯</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┰')" onclick="crfont('┰')">┰</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┱')" onclick="crfont('┱')">┱</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┲')" onclick="crfont('┲')">┲</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┳')" onclick="crfont('┳')">┳</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┴')" onclick="crfont('┴')">┴</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┵')" onclick="crfont('┵')">┵</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┶')" onclick="crfont('┶')">┶</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┷')" onclick="crfont('┷')">┷</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┸')" onclick="crfont('┸')">┸</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┹')" onclick="crfont('┹')">┹</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┺')" onclick="crfont('┺')">┺</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┻')" onclick="crfont('┻')">┻</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┼')" onclick="crfont('┼')">┼</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┽')" onclick="crfont('┽')">┽</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┾')" onclick="crfont('┾')">┾</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('┿')" onclick="crfont('┿')">┿</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╀')" onclick="crfont('╀')">╀</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╁')" onclick="crfont('╁')">╁</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╂')" onclick="crfont('╂')">╂</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╃')" onclick="crfont('╃')">╃</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╄')" onclick="crfont('╄')">╄</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╅')" onclick="crfont('╅')">╅</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╆')" onclick="crfont('╆')">╆</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╇')" onclick="crfont('╇')">╇</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╈')" onclick="crfont('╈')">╈</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╉')" onclick="crfont('╉')">╉</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╊')" onclick="crfont('╊')">╊</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╋')" onclick="crfont('╋')">╋</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('═')" onclick="crfont('═')">═</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('║')" onclick="crfont('║')">║</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╒')" onclick="crfont('╒')">╒</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╓')" onclick="crfont('╓')">╓</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╔')" onclick="crfont('╔')">╔</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╕')" onclick="crfont('╕')">╕</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╖')" onclick="crfont('╖')">╖</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╗')" onclick="crfont('╗')">╗</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╘')" onclick="crfont('╘')">╘</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╙')" onclick="crfont('╙')">╙</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╚')" onclick="crfont('╚')">╚</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╛')" onclick="crfont('╛')">╛</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╜')" onclick="crfont('╜')">╜</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╝')" onclick="crfont('╝')">╝</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╞')" onclick="crfont('╞')">╞</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╟')" onclick="crfont('╟')">╟</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╠')" onclick="crfont('╠')">╠</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╡')" onclick="crfont('╡')">╡</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╢')" onclick="crfont('╢')">╢</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╣')" onclick="crfont('╣')">╣</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╤')" onclick="crfont('╤')">╤</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╥')" onclick="crfont('╥')">╥</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╦')" onclick="crfont('╦')">╦</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╧')" onclick="crfont('╧')">╧</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╨')" onclick="crfont('╨')">╨</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╩')" onclick="crfont('╩')">╩</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╪')" onclick="crfont('╪')">╪</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╫')" onclick="crfont('╫')">╫</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╬')" onclick="crfont('╬')">╬</div>
					</div>
				</div>
			</div>
			<div id="其他一图" style="DISPLAY:none">
				<div class="selftface_xs">
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Α')" onclick="crfont('Α')">Α</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Β')" onclick="crfont('Β')">Β</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Γ')" onclick="crfont('Γ')">Γ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Δ')" onclick="crfont('Δ')">Δ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ε')" onclick="crfont('Ε')">Ε</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ζ')" onclick="crfont('Ζ')">Ζ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Η')" onclick="crfont('Η')">Η</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Θ')" onclick="crfont('Θ')">Θ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ι')" onclick="crfont('Ι')">Ι</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Κ')" onclick="crfont('Κ')">Κ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Λ')" onclick="crfont('Λ')">Λ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Μ')" onclick="crfont('Μ')">Μ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ν')" onclick="crfont('Ν')">Ν</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ξ')" onclick="crfont('Ξ')">Ξ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ο')" onclick="crfont('Ο')">Ο</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Π')" onclick="crfont('Π')">Π</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ρ')" onclick="crfont('Ρ')">Ρ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Σ')" onclick="crfont('Σ')">Σ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Τ')" onclick="crfont('Τ')">Τ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Υ')" onclick="crfont('Υ')">Υ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Φ')" onclick="crfont('Φ')">Φ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Χ')" onclick="crfont('Χ')">Χ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ψ')" onclick="crfont('Ψ')">Ψ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ω')" onclick="crfont('Ω')">Ω</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('α')" onclick="crfont('α')">α</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('β')" onclick="crfont('β')">β</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('γ')" onclick="crfont('γ')">γ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('δ')" onclick="crfont('δ')">δ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ε')" onclick="crfont('ε')">ε</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ζ')" onclick="crfont('ζ')">ζ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('η')" onclick="crfont('η')">η</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('θ')" onclick="crfont('θ')">θ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ι')" onclick="crfont('ι')">ι</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('κ')" onclick="crfont('κ')">κ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('λ')" onclick="crfont('λ')">λ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('μ')" onclick="crfont('μ')">μ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ν')" onclick="crfont('ν')">ν</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ξ')" onclick="crfont('ξ')">ξ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ο')" onclick="crfont('ο')">ο</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('π')" onclick="crfont('π')">π</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ρ')" onclick="crfont('ρ')">ρ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('σ')" onclick="crfont('σ')">σ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('τ')" onclick="crfont('τ')">τ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('υ')" onclick="crfont('υ')">υ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('φ')" onclick="crfont('φ')">φ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('χ')" onclick="crfont('χ')">χ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ψ')" onclick="crfont('ψ')">ψ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ω')" onclick="crfont('ω')">ω</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︵')" onclick="crfont('︵')">︵</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︶')" onclick="crfont('︶')">︶</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︹')" onclick="crfont('︹')">︹</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︺')" onclick="crfont('︺')">︺</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︿')" onclick="crfont('︿')">︿</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹀')" onclick="crfont('﹀')">﹀</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︽')" onclick="crfont('︽')">︽</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︾')" onclick="crfont('︾')">︾</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹁')" onclick="crfont('﹁')">﹁</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹂')" onclick="crfont('﹂')">﹂</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹃')" onclick="crfont('﹃')">﹃</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹄')" onclick="crfont('﹄')">﹄</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︻')" onclick="crfont('︻')">︻</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︼')" onclick="crfont('︼')">︼</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︷')" onclick="crfont('︷')">︷</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︸')" onclick="crfont('︸')">︸</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︱')" onclick="crfont('︱')">︱</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︳')" onclick="crfont('︳')">︳</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('︴')" onclick="crfont('︴')">︴</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('А')" onclick="crfont('А')">А</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Б')" onclick="crfont('Б')">Б</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('В')" onclick="crfont('В')">В</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Г')" onclick="crfont('Г')">Г</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Д')" onclick="crfont('Д')">Д</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Е')" onclick="crfont('Е')">Е</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ё')" onclick="crfont('Ё')">Ё</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ж')" onclick="crfont('Ж')">Ж</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('З')" onclick="crfont('З')">З</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('И')" onclick="crfont('И')">И</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Й')" onclick="crfont('Й')">Й</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('К')" onclick="crfont('К')">К</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Л')" onclick="crfont('Л')">Л</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('М')" onclick="crfont('М')">М</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Н')" onclick="crfont('Н')">Н</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('О')" onclick="crfont('О')">О</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('П')" onclick="crfont('П')">П</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Р')" onclick="crfont('Р')">Р</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('С')" onclick="crfont('С')">С</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Т')" onclick="crfont('Т')">Т</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('У')" onclick="crfont('У')">У</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ф')" onclick="crfont('Ф')">Ф</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Х')" onclick="crfont('Х')">Х</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ц')" onclick="crfont('Ц')">Ц</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ч')" onclick="crfont('Ч')">Ч</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ш')" onclick="crfont('Ш')">Ш</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Щ')" onclick="crfont('Щ')">Щ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ъ')" onclick="crfont('Ъ')">Ъ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ы')" onclick="crfont('Ы')">Ы</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ь')" onclick="crfont('Ь')">Ь</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Э')" onclick="crfont('Э')">Э</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Ю')" onclick="crfont('Ю')">Ю</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('Я')" onclick="crfont('Я')">Я</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('а')" onclick="crfont('а')">а</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('б')" onclick="crfont('б')">б</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('в')" onclick="crfont('в')">в</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('г')" onclick="crfont('г')">г</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('д')" onclick="crfont('д')">д</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('е')" onclick="crfont('е')">е</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ё')" onclick="crfont('ё')">ё</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ж')" onclick="crfont('ж')">ж</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('з')" onclick="crfont('з')">з</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('и')" onclick="crfont('и')">и</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('й')" onclick="crfont('й')">й</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('к')" onclick="crfont('к')">к</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('л')" onclick="crfont('л')">л</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('м')" onclick="crfont('м')">м</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('н')" onclick="crfont('н')">н</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('о')" onclick="crfont('о')">о</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('п')" onclick="crfont('п')">п</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('р')" onclick="crfont('р')">р</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('с')" onclick="crfont('с')">с</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('т')" onclick="crfont('т')">т</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('у')" onclick="crfont('у')">у</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ф')" onclick="crfont('ф')">ф</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('х')" onclick="crfont('х')">х</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ц')" onclick="crfont('ц')">ц</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ч')" onclick="crfont('ч')">ч</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ш')" onclick="crfont('ш')">ш</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('щ')" onclick="crfont('щ')">щ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ъ')" onclick="crfont('ъ')">ъ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ы')" onclick="crfont('ы')">ы</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ь')" onclick="crfont('ь')">ь</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('э')" onclick="crfont('э')">э</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ю')" onclick="crfont('ю')">ю</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('я')" onclick="crfont('я')">я</div>
					</div>
				</div>
			</div>
			<div id="其他二图" style="DISPLAY:none">
				<div class="selftface_xs">
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ˊ')" onclick="crfont('ˊ')">ˊ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ˋ')" onclick="crfont('ˋ')">ˋ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('˙')" onclick="crfont('˙')">˙</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('–')" onclick="crfont('–')">–</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('―')" onclick="crfont('―')">―</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('‥')" onclick="crfont('‥')">‥</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('‵')" onclick="crfont('‵')">‵</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('℅')" onclick="crfont('℅')">℅</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('℉')" onclick="crfont('℉')">℉</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╱')" onclick="crfont('╱')">╱</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╲')" onclick="crfont('╲')">╲</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('╳')" onclick="crfont('╳')">╳</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▁')" onclick="crfont('▁')">▁</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▂')" onclick="crfont('▂')">▂</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▃')" onclick="crfont('▃')">▃</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▄')" onclick="crfont('▄')">▄</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▅')" onclick="crfont('▅')">▅</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▆')" onclick="crfont('▆')">▆</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▇')" onclick="crfont('▇')">▇</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('█')" onclick="crfont('█')">█</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▉')" onclick="crfont('▉')">▉</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▊')" onclick="crfont('▊')">▊</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▋')" onclick="crfont('▋')">▋</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▌')" onclick="crfont('▌')">▌</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▍')" onclick="crfont('▍')">▍</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▎')" onclick="crfont('▎')">▎</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▏')" onclick="crfont('▏')">▏</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▓')" onclick="crfont('▓')">▓</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▔')" onclick="crfont('▔')">▔</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▕')" onclick="crfont('▕')">▕</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▼')" onclick="crfont('▼')">▼</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('▽')" onclick="crfont('▽')">▽</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('◢')" onclick="crfont('◢')">◢</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('◣')" onclick="crfont('◣')">◣</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('◤')" onclick="crfont('◤')">◤</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('◥')" onclick="crfont('◥')">◥</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('☉')" onclick="crfont('☉')">☉</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⊕')" onclick="crfont('⊕')">⊕</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〒')" onclick="crfont('〒')">〒</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〝')" onclick="crfont('〝')">〝</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〞')" onclick="crfont('〞')">〞</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹐')" onclick="crfont('﹐')">﹐</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹑')" onclick="crfont('﹑')">﹑</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹒')" onclick="crfont('﹒')">﹒</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹔')" onclick="crfont('﹔')">﹔</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹕')" onclick="crfont('﹕')">﹕</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹖')" onclick="crfont('﹖')">﹖</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹗')" onclick="crfont('﹗')">﹗</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹙')" onclick="crfont('﹙')">﹙</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹚')" onclick="crfont('﹚')">﹚</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹛')" onclick="crfont('﹛')">﹛</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹜')" onclick="crfont('﹜')">﹜</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹝')" onclick="crfont('﹝')">﹝</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹞')" onclick="crfont('﹞')">﹞</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹟')" onclick="crfont('﹟')">﹟</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹠')" onclick="crfont('﹠')">﹠</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹡')" onclick="crfont('﹡')">﹡</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('?')" onclick="crfont('?')">?</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹢')" onclick="crfont('﹢')">﹢</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹣')" onclick="crfont('﹣')">﹣</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹤')" onclick="crfont('﹤')">﹤</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹥')" onclick="crfont('﹥')">﹥</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹦')" onclick="crfont('﹦')">﹦</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹨')" onclick="crfont('﹨')">﹨</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹩')" onclick="crfont('﹩')">﹩</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹪')" onclick="crfont('﹪')">﹪</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄅ')" onclick="crfont('ㄅ')">ㄅ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄆ')" onclick="crfont('ㄆ')">ㄆ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄇ')" onclick="crfont('ㄇ')">ㄇ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄈ')" onclick="crfont('ㄈ')">ㄈ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄉ')" onclick="crfont('ㄉ')">ㄉ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄊ')" onclick="crfont('ㄊ')">ㄊ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄋ')" onclick="crfont('ㄋ')">ㄋ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄌ')" onclick="crfont('ㄌ')">ㄌ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄍ')" onclick="crfont('ㄍ')">ㄍ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄎ')" onclick="crfont('ㄎ')">ㄎ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄏ')" onclick="crfont('ㄏ')">ㄏ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄐ')" onclick="crfont('ㄐ')">ㄐ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄑ')" onclick="crfont('ㄑ')">ㄑ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄒ')" onclick="crfont('ㄒ')">ㄒ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄓ')" onclick="crfont('ㄓ')">ㄓ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄔ')" onclick="crfont('ㄔ')">ㄔ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄕ')" onclick="crfont('ㄕ')">ㄕ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄖ')" onclick="crfont('ㄖ')">ㄖ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄗ')" onclick="crfont('ㄗ')">ㄗ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄘ')" onclick="crfont('ㄘ')">ㄘ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄙ')" onclick="crfont('ㄙ')">ㄙ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄚ')" onclick="crfont('ㄚ')">ㄚ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄛ')" onclick="crfont('ㄛ')">ㄛ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄜ')" onclick="crfont('ㄜ')">ㄜ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄝ')" onclick="crfont('ㄝ')">ㄝ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄞ')" onclick="crfont('ㄞ')">ㄞ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄟ')" onclick="crfont('ㄟ')">ㄟ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄠ')" onclick="crfont('ㄠ')">ㄠ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄡ')" onclick="crfont('ㄡ')">ㄡ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄢ')" onclick="crfont('ㄢ')">ㄢ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄣ')" onclick="crfont('ㄣ')">ㄣ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄤ')" onclick="crfont('ㄤ')">ㄤ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄥ')" onclick="crfont('ㄥ')">ㄥ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄦ')" onclick="crfont('ㄦ')">ㄦ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄧ')" onclick="crfont('ㄧ')">ㄧ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄨ')" onclick="crfont('ㄨ')">ㄨ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('ㄩ')" onclick="crfont('ㄩ')">ㄩ</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('﹫')" onclick="crfont('﹫')">﹫</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〾')" onclick="crfont('〾')">〾</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⿰')" onclick="crfont('⿰')">⿰</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⿱')" onclick="crfont('⿱')">⿱</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⿲')" onclick="crfont('⿲')">⿲</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⿳')" onclick="crfont('⿳')">⿳</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⿴')" onclick="crfont('⿴')">⿴</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⿵')" onclick="crfont('⿵')">⿵</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⿶')" onclick="crfont('⿶')">⿶</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⿷')" onclick="crfont('⿷')">⿷</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⿸')" onclick="crfont('⿸')">⿸</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⿹')" onclick="crfont('⿹')">⿹</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⿺')" onclick="crfont('⿺')">⿺</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('⿻')" onclick="crfont('⿻')">⿻</div>
					</div>
					<div class="selfont_eve lfd"><div class="selfont" onmouseover="yulan('〇')" onclick="crfont('〇')">〇</div>
					</div>
				</div>
			</div>
			<div style="DISPLAY:none">
				<script language="javascript" type="text/javascript">
					特殊符号.className="selface_bq_b";
					var slef;
					function huifu()
					{
						特殊符号.className="selface_bq_a";
						编号字母.className="selface_bq_a";
						拼音线条.className="selface_bq_a";
						其他一.className="selface_bq_a";
						其他二.className="selface_bq_a";
						特殊符号图.style.display="none";
						编号字母图.style.display="none";
						拼音线条图.style.display="none";
						其他一图.style.display="none";
						其他二图.style.display="none";
					}
					function yulan(picid)
					{
						font_yulan.innerHTML=picid;
					}
					function crfont(picid)
					{
						dialogArguments.insertHTML(picid);
					}
				</script>
			</div>
		</form>
	</body>
</HTML>
