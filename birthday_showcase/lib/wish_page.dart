import 'dart:math';

import 'package:birthday_showcase/component/wish_cell.dart';
import 'package:flutter/material.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

import 'model/wish_note.dart';

class WishPage extends StatelessWidget {
  WishPage({super.key});

  final List<WishNote> _list = [
    WishNote(from: "Híu", to: "Tất cả mọi người", content: "Cả team chúng mình có người đã hoạt động lâu, cũng có người mới, cuộc sống cá nhân của mọi người cũng thay đổi nhiều so với ngày mọi người trở thành Igniter lần đầu tiên, có thể đã trở nên bận rộn hơn hoặc có thể dần theo đuổi những giá trị khác. Với tất cả những thay đổi đó mà mọi người vẫn ở đây cùng nhau hôm nay dù mọi người có nhiều sự lựa khác, vì thế c rất cảm ơn mọi người đã cố gắng ưu tiên và giữ Women Techmakers HCMC là một phần trên con đường phát triển của mọi người, cảm ơn mọi người đã và đang giữ những thành viên team này là một phần cuộc sống của mọi người. C thật sự rất quý team mình, c cảm thấy mình được nuôi dưỡng ở đây, cảm thấy giá trị mình theo đuổi và những gì mình muốn làm, có thể được thực hiện ở đây. Đây là lý do c ở lại. C hy vọng mọi người cũng cảm thấy được như thế thiệt lâu trong tương lai nữa. C chúc chúng ta mãi là những cá thể chia sẻ cùng những tầm nhìn để chúng ta mãi là một tập thể 🟦🟩 (màu xanh của cái icon này hơi điêu, thui kệ i)"),
    WishNote(from: "Gia Anh", to: "C Hiếu ", content: "Từ lúc chị Hiếu xuất hiện và dẫn dắt, cuộc đời đé sai nẻ của em tươi sáng hẳn. Cảm ơn chị vì đã là một đàn chị cực kỳ cực kỳ support và chăm chút. Em mong những gì chị dự định sẽ được thuận lợi và trơn tru, và mong rằng chị sẽ tiếp tục đồng hành dài lâu cùng WTM HCMC chúng ta nhe :> Mãi iu"),
    WishNote(from: "Híu", to: "General Lead Võ Thị Thanh Ngọc", content: "Hé lu, vì thiệp của e ko ai viết, nên để c viết thay ở đây nha =)) Quá trình 1 năm qua để gây dựng 1 team như thế này, c đoán e đã phải thử rất nhiều thứ e chưa từng biết hoặc làm những thứ e nghĩ e biết nhưng chưa từng làm. E kể c là trước kia e chưa từng tham gia 1 team hoạt động cộng đồng nào, e chẳng biết lên plan event làm sao, chẳng biết làm cái Pns hay MoU như thế nào. E đã gặp nhiều thử thách của sự bắt đầu và hiện e đang gặp thử thách của sự duy trì. C biết có những lúc e mệt mỏi nhiều, áp lực ở công ty và áp lực tự tạo của bản thân thì ko bàn tới, nhưng cũng có những áp lực từ bên ngoài lên team mình mà e đang chịu một mình để team có thể làm và chơi một cách thoải mái hơn. Cái gì quan trọng cũng đôi lúc làm mình mệt mỏi mà, điều đó cũng có thể có nghĩa là vì nó là thứ đáng để đi tiếp. Những gì e đạt được trong một năm qua với team mình nó không mang tính chất hữu hình rõ ràng như những record làm speaker của e, hay những thiết kế của team design, những content đc viết được lưu lại trên fb page. Tuy nhiên mọi người nhiều ít vẫn thấy được nỗ lực của e, khó khăn của e, thành tựu của e và đặc biệt là con người của e. Nên nếu có thể, hãy chia sẻ nhiều hơn một chút. C chúc e vững tin hơn  vào lựa chọn của mình, tin rằng e sẽ end up ở nơi mà e cần end up, trust the process, và tập trung nhiều vào hiện tại hơn, tận hưởng nó một chút, bởi vì hiện tại của e có thể là điều e đã từng mong ước nhiều năm về trước, nên là hãy ăn mừng nó một chút khi nó đang ở đây"),
    WishNote(from: "Em là Hoha nè", to: "WTM HCMC Team", content: "Dù mới tiếp xúc với các anh chị trong một khoảng thời gian ngắn thôi nhưng mà em rất ư là thích và ngưỡng mộ cách làm việc cũng như tính cách của mọi người. Chời ơi mê cái cách ac cống hiến cho tư bản 8 tiếng rồi về chiến với task của WTM đến tận khuya. Không biết năng lượng đâu mà mọi người sôi nổi và nhiệt huyết dễ sợ. Chúc cho những anh chị guột của iem sẽ thật nhiều sức khỏe và may mắn trong cuộc sống. Em xin gửi lời củm ơn be bé đến chị Mido đã cho em những lời khuyên bổ ích, lắng nghe tâm sự tuổi hồng của em. Cảm ơn chị Quyên đã giúp em mở rộng mindset hơn, tập nhìn vấn đề ở nhiều khía cạnh và ngồi nghiệp cùng em trong những lúc meeting (đính chính chị toi hong có khó tính nhaa kk). Và không quên cảm ơn chị Ngọc chị Dương đã luôn có mặt mỗi khi em thắc mắc (em thấy chị Dương thân thiện cực, chị nói chuyện cũng zth nữa hehe).\nChúc cho WTM HCM sẽ thật cháy, thật chiến, thật thành công trong tương laiii. From Hoha with love!!!"),
    WishNote(from: "Khải Huyền", to: "WTM HCMC", content: "Chúc mừng WTM HCMC tròn 1 tuổi🥳🥳🥳 Chúc WTM HCMC sang tuổi mới sẽ ngày càng thành công và lan toả nhiều điều hữu ích đến cộng đồng đam mê công nghệ😘😘 Chúc các chị và các bạn sẽ luôn mạnh khoẻ, tràn đầy năng lượng và nhiệt huyết để cùng nhau tổ chức các hoạt động, sự kiện thật thành công và bùng nổ🔥💥🎉😍"),
    WishNote(from: "Tống Nam Tuấn Vũ", to: "WTM HCMC", content: "Xin chúc các Igniter lúc nào cũng luôn cháy mình và cùng nhau vượt qua phong ba bão tasks."),
    WishNote(from: "Bé Tình dễ thương", to: "Em muốn chúc hết mọi người.", content: "Xin lỗi mọi người vì em chúc muộn, vì em mới hoàn thành deadline trên trường xong. Sáng mai em phải thi sớm nhưng chợt nhớ ra mình quên gì đó. Bé Tình dễ thương xin chúc tất cả thành viên WTM HCMC luôn mãi xinh đẹp, luôn hạnh phúc, ai chưa tìm được nửa kia của đời mình thì nhanh nhanh tìm được, chúc mọi người luôn có sức khoẻ để chạy deadline cùng nhau nhé. Chúc WTM HCMC ngày càng phát triển và thành công rực rỡ. 1 năm gắn bó đủ cho em biết được bản thân mình là ai, mình làm được những gì và mình có được 1 đại gia đình luôn giúp đỡ nhau."),
    WishNote(from: "Ko có chị em sống ko nỗi", to: "Huyền - Ignite Collaborators", content: "Cảm ơn em đã đến với WTM HCMC, cùng tụi chị trải qua những lần lên bờ xuống ruộng cùng đói tác (đặc biệt là Calvin :v), cùng tụi chị lên kịch bản sự kiện để cứu rỗi MiDo. Mãi giữ trong mình ngọn lửa nhiệt huyết em nha, chị screenshot tin nhắn của e trên discord rồi, khỏi trốn!"),
    WishNote(from: "Em là người iu mới của WTM", to: "WTM", content: "bùm bùm chiu chiu chúc MTM HCM tuổi mới nhiều năng lượng mới, tích cực. Tuổi mới vạn sự như ý, an khang thịnh vượng, phát lộc phát tài ạ"),
    WishNote(from: "Con Des Ma", to: "2 bé đệ của team Design", content: "Dạo này c hổng có thời gian để chỉ cho mấy đứa thêm này thêm kia, đến feedback cũm ko còn đc kỹ như trước, mí đứa thông cảm nhe. Cả Gia Anh và Linh đều là 2 đứa học trái ngành mà đá chéo chân sang làm design, tuy vậy mà mỗi đứa đều có thế mạnh trong design. Gia Anh thì cảm tính về thiết kế tốt dù chưa có nền tảng về design thinking, Linh thì luôn tò mò và biết rất nhiều và rộng về các nền tảng trong thiết kế lẫn media, nhiều hơn c luôn í. Thế mạnh mà 2 đứa có đều là thế yếu của c thời điểm c bằng tụi e =)) vì thế c rất là nể hai đứa và c tin rằng tụi e còn rất nhiều không gian để phát triển hơn nữa. Kể cả thời điểm hiện tại, c cũng học được nhiều từ hai đứa, với GA là tinh thần chịu khó, với các sự kiện trước gần như đã có sẵn template và KV chi tiết để e làm, e còn dùng canva cho lẹ. Tới khi c vào e bị buộc phải dùng AI, phải tự research và tự đẻ ra layout, phải làm những thứ e chưa từng làm mà vẫn ko ngại, ko từ chối. Còn ở Linh, c học được về việc để sự tò mò của mình dẫn mình đi, e thử rất nhiều phần mềm từ design tới edit video, từ graphic đến motion, nó cho e cái range skill lớn và cho e cơ hội để tìm được thứ mình thích một cách chính xác hơn. Dạo này c cũng bắt đầu thử học những phần mềm mới, con máy c nó hơi lag lag rồi =)) C cảm thấy WTM HCMC là một nơi để mình có thể show off và thực nghiệm những thứ mình học đc, đi làm cho tư bản dễ gì mà đc làm những gì mình muốn đúng ko? Nên c hy vọng với những điểm mạnh riêng của team mình, thì trong tương lai tụi mình có thể mang đến những design ngầu đét và đa dạng hơn nữa. Biết đâu mình sẽ bắt đầu làm motion graphic đồ nữa nè"),
    WishNote(from: "Lại là toi đây, chắc nửa số lời chúc là của toi rồi", to: "Con Ma Dương", content: "Ăn nhiều vào e ei, nghỉ FPT đi"),
    WishNote(from: "chị Ngọc", to: "Gửi 3 cô em Nhàn Hạ", content: "Gửi các em gái mới của chị ở Đà Nẵng,\nVượt ngàn khoảng cách xa xôi, cảm ơn các em vì đã là một phần trong hành trình này của WTM HCMC, cùng nhau chạy task, cùng nhau weekly tâm sự dày hàng tuần. \n\nGửi Hạ,\nCảm ơn em vì đã cùng Quyên ôm cục Academic chà bá lửa để chu toàn cho Sudo Code 2023, một chương trình rất thử thách với cả team. Chị biết có những lúc em rất áp lực vì tasks của team mình, nhưng chị luôn cảm thấy cảm phục với những material em đã cùng xây dựng cho team Academic. \n\nGửi Nhàn Event (2 đứa Nhàn này lộn xộn ghê),\nCảm ơn em vì đã cùng team event hốt hụi, giặc tới đâu, đánh tới đó cùng mọi người. Dù không làm việc trực tiếp với em, nhưng chị luôn biết em là một phần không thể thiếu cho công tác chuẩn bị cho các event của Sudo Code. \n\nGửi Nhàn Content,\nTeam content của Dương chắc hẳn cảm thấy bớt cô đơn hơn rất nhiều với sự xuất hiện của em. Cảm ơn em vì những đêm thức khuya verify tasks cùng WTM HCMC. Dù đầu việc của team content khá nặng, nhưng team luôn tin rằng, em sẽ luôn ở đó và hỗ trợ team đúng deadlines như kế hoạch đã đề ra cho Sudo Code lần này. \n\nCác em đều là những cô gái rất giỏi và đầy trách nhiệm, hy vọng Women Techmakers HCMC có thể là nơi nuôi dưỡng những tiềm năng của các em. Dù là thời gian ngắn hay dài, WTM HCMC cũng rất vui khi là một phần trong hành trình tuổi trẻ của mấy đứa.\n\nChúc cho giai đoạn sau của Sudo Code 2023 sẽ Nhàn Hạ thiệc!"),
    WishNote(from: "Ko buồn trả lời nữa rồi", to: "Các bé collaborators", content: "Chắc tới lúc này thì các e cũng đã nhận ra là mình đã bị trap, đã bị lùa gà =)) Cơ mà rất vui vì có những con gà này đi theo team Igniters trong 1 tháng vừa qua và trong 3 tháng tiếp theo. Hy vọng đây ko phải là lần duy nhất chúng ta cùng hợp tác dui dẻ dui dẻ dới nhao. Tụi e đi đòi Dương tài trợ cho bay vào SG ngày demo day đi"),
    WishNote(from: "Dưn nè", to: "Igniters", content: "Hành trình 1 năm của WTM HCMC thật may mắn khi có sự ủng hộ và đồng hành của mọi người. Chúng ta đã trải qua những ngày chạy deadline cùng nhau, tuy mệt nhưng vui. Dương biết mỗi bạn đều có công việc riêng, có niềm vui cá nhân, tuy nhiên mọi người đã dành 1 \"góc\" thời gian của mình cho việc xây dựng cộng đồng Women Techmakers Ho Chi Minh City, điều này càng chứng tỏ tâm huyết và tinh thần của mọi người dành cho team là rất lớn. Dương hy vọng khi đồng hành cùng nhau tại đây, mỗi chúng ta đều học thêm cho mình được 1 xíu, hoặc chí ít là có thêm \"câu chuyện đẹp\" để viết vào hành trình tuổi trẻ của mình ❤. Dương rất vui khi được đồng hành cùng mọi người, chúc cho team mình sẽ luôn gắn bó, cùng tạo cơ hội và giúp đỡ cho các bạn trẻ và cũng tạo cơ hội phát triển cho chính mình ❤"),
    WishNote(from: "FA - Mana", to: "Bé Tình", content: "Không biết tự bao giờ mà FA và Logistics gắn bó và song hành cùng nhau trên mọi sự kiện. Có thể chị em mình không gặp nhau hay nói chuyện nhiều nhưng làm việc rất hợp rơ (trộm vía chưa có cãi lộn). Nhớ ngày đầu phỏng vấn cô gái bé nhỏ, nhỏ nhẹ dễ mến, tràn đầy năng lượng. Giờ đây em vẫn bé nhỏ (ngày càng nhỏ) vẫn 1 tay gánh vác mảng logistic của team. Mọi thứ đồ đạc, setup, chạy tới lui. Team thật may khi có senior logistic - bà chủ tiệm tạp hóa hỗ trợ ngay từ những ngày đầu tiên. Chị biết em rất bận, học hành nhiều thứ, nhưng em vẫn luôn là 1 cô gái trách nhiệm, nói được làm được, vẫn luôn nhớ chị rảnh khi nào để làm việc chung và dĩ nhiên không quên động viên chị những lúc chị bất ổn. Đôi vai gầy lắm rồi, nếu có gì cần giúp đỡ em cứ chia sẻ với team nha, chị và mọi người luôn sẵn sàng hỗ trợ em. Cố lên em nhé, cảm ơn em vì tất cả ❤"),
    WishNote(from: "Vẫn là Dưn :))", to: "Em Mi Fullsnack", content: "Chào em, cô gái Đà Nẵng. Gặp nhau ở Sài Gòn, trong những ngày em mới chuyển vào tới lúc em khăn gói đi về. Sài Gòn vui nhưng tạm thời chưa hợp với em. Gọi em là em Mi Fullsnack vì gì em cũng biết làm, chỉ cần quăng em. Em đã có rất nhiều kinh nghiệm và kỹ năng chạy sự kiện, chị cũng đã học hỏi từ em rất nhiều thứ. Em là cô gái có nhiều ý tưởng, biết định hướng tổ chức nhưng vẫn cần cẩn thận và chỉn chu hơn trong các mục chi tiết. Chị vẫn nhớ những ngày chạy deadline, những ngày ăn ké, những ngày trò chuyện và định hướng cho em. Không chắc rằng những trải nghiệm của chị phù hợp với em, nhưng chị tin là khi trò chuyện với em sẽ giúp em cảm thấy được bình tâm hơn, nhìn vấn đề từ nhiều phía. Giờ đây em về Đà Nẵng thân iu rồi, không biết khi nào mới gặp lại. Cảm ơn em vẫn luôn dành tâm huyết cho WTM HCMC. Chúc em sớm ổn định công việc và cân bằng lại cuộc sống ở vùng đất quen thuộc nhưng đầy mới mẻ. Sóng gió 4 bể là nhà, mong em chân cứng đá mềm vượt qua tất cả 💪"),
    WishNote(from: "Vẫn là Dưn, hơi mỏi tay rùi", to: "Ignite Collaborators", content: "gặp nhau là duyên, làm việc cùng nhau là tạo nghiệp =)). Chị không biết vì lý do gì, tự nguyện hay bị dụ mà tụi em đã và đang ở đây đồng hành cùng WTM HCMC. Cảm ơn em Huyền, Hạ, Nhàn Event, Nhàn Content đã dành thời gian rảnh của mình cho WTM HCMC, cùng tụi chị chạy deadline xuyên màn đêm, không biết nếu không có tụi em thì tụi chị phải làm như thế nào. Kỉ niệm cùng Huyền từ IWD task viết thành sớ, Nhàn và Hạ đá task bắt chị nói hoài trong lúc họng chị bất ổn (sắp cái lịch lúc thì sáng buồn ngủ, lúc thì tối đói). Kỉ niệm những lần quăng task content cho em Nhàn bận gộn, tuy nhiên không hề quyên deadline, 2 chị em chỉ ngoi lên vào đêm khuya check task và viết task, cảm ơn em đã cứu chị những quả boom. Hy vọng rằng sau này WTM HCMC vẫn tiếp tục nhận được ủng hộ và đồng hành của các em - những cô gái nhỏ, đầy năng lượng và nhiệt huyết. Chúc cho các em luôn vui vẻ, tươi trẻ, khỏe mạnh, hạnh phúc, học tập tốt, ra trường có công việc ổn định (mau giàu về tài trợ, bao nuôi WTM HCMC). Cảm ơn các em rất rất nhìuuuuuuuuu"),
    WishNote(from: "Con ma tạm thời", to: "Đét(des) ma", content: "Cảm ơn chị đã tham gia và đồng hành cùng WTM HCMC, người chị chuẩn chỉnh và tâm huyết - senior design mà WTM HCMC may mắn có được. Team des hết bất ổn nhưng team con ma vẫn còn bấp bênh, xin vía build team ổn áp để em nhả task ạ =))"),
    WishNote(from: "Mờ i Mi ", to: "Tất cả tình yêu tới WTM HCMC", content: "Người đưa em chân ướt chân ráo tới WTM HCMC là team founder, người giữ em lại tới thời điểm hiện tại là sự chân thành từ WTM HCMC. WTM HCMC đối với em là một bến đỗ là nhà thứ high của e trong những ngày tháng em ở HCM. Cảm ơn tất cả mọi người vì chặng hành trình vừa qua, ko gần nhau ko có nghĩa là hết bị hành bởi nhauuu (3 chấm kéo dàii).\n\nNói gì thì nói 1 năm qua tụi mình cũng đã có \"tăng độ nhận diện thương hiệu\", cũng như đánh dấu cho một community như WTM HCMC có chỗ đứng trong tech HCM. Hy vọng các sự kiện bởi mình tổ chức, được dẫn dắt bởi c Ngọcc siêu xịn thì mình sẽ đạt được nhiều thành quả hơn trong thời gian tới.\n\nMỗi người trong WTM HCMC đều là một mảnh ghép và em tin rằng cho dù hiện tại hay sau này, cho dù định hướng mọi người có như thế nào. Thì thời khắc này, cũng nâng ly ăn mừng sinh nhật một tuổi của team chúng ta. Để nói rằng, tụi mình đã rất toẹt vời đó ±±±\n\nP/s 1: Cảm ơn chị Ngọc và chị Dương. Hai chị đã giúp cho em khẩu nghiệp nhiều hơn, sáng mắt nhiều hơn, đi chơi dc nhiều hơn. Sự trưởng thành của em cũng góp phần rất lớn nhờ hai chị nuôi em. Mãi là em của mấy chịi\n\nP/s 2: Cảm ơn chị Hiếu rất là nhiều ạ, ở chị em nhận được sự chân thành của một mama chị lớn lo cho các em. Sự có mặt của chị đối với WTM HCMC là một sự đột phá, không chỉ là những kinh nghiệm dí sài nơ mà những trải nghiệm phong phú từ chị. Em hi vọng teambuilding sắp tới sẽ được đi Nha Trang để ăn nem nướng nhà chị Hiếu\n\nP/s 3: Chị chờ thiệp cưới từ Tình nha em =)))))) mãi iu cô pé nhờ gì cũng làm, toàn làm ra thành quả xuất sắc thui. Em đã lớn hơn rất nhiều từ một sự kiện chung ngoài của hai chị em mình rùi đó. Độ khẩu nghiệp tăng, độ mạnh mẽ tăng. Mong là bạn ny em ko bị em hành mỗi lần tới sk :v"),
    WishNote(from: "Em Linh ạ", to: "WTM-HCMC nói chung và những người chị iu dấu của em nói riêng ạ :3" ,content: "Lời đầu tiên xin gửi lời chúc hân hoan và đầy trang trọng nhất đến với team WTM-HCMC của chúng ta ạ :3 Chúc WTM-HCMC ngày càng phát triển hơn, vững mạnh hơn và reach out được đến nhiều bạn/người đặc biệt là nữ yêu thích công nghệ hơnnnnn.\n\nLời chúc tiếp theo em xin gửi lời chúc đến người chị đã ""lùa gà"" em vào mụt chiếc team ko ngờ lại hợp cạ nhao đến z :v chúc chị Mi sớm tìm được ""bến đỗ"" trong công việc của mình ạ, hy vọng chị tìm được một nơi phù hợp với bản thân và ngày càng phát triển hơn nhaaaaaaa ❤️\n\nLời tiếp theo em xin gửi gắm đến chị Ngạc aka Community Lead của WTM-HCMC ạ :3 Chúc người chị cùng cung Song Tử của iêm đạt được nhiều thành tựu hơn trong tương lai ạ, và ngày càng đưa WTM-HCMC của chúng mình ngày càng vươn xa thiệt xa hơn ạ 🔥🔥\n\nVà cuối cùng, em xin gửi đến chị Híu iu dấu aka Đì zai nơ Me ne gờ 😽 Củm ơn chị về những lời feedback vô cùng có tâm và những chỉ dẫn giúp cho em và Gia Anh ngày càng tốt hơnnnn, chúc chị kiếm đc nhiều xèn hơn, xuynh đệp hơn và xịn sò hơn nữaaaa để mãi là chị iu của team Designer nhaaaaaaaa 😘 hihi"),
    WishNote(from: "Nguyễn Quỳnh Như ", to: "Em mún gửi lời chúc đến WTM HCMC", content: "Dear WTM HCMC,\n\nNhư muốn dành lời cảm ơn đến WTM vì đã tin tưởng Như và cho Như cơ hội để làm cô gái event. Đây là một điều rất quý giá và Như sẽ luôn biết ơn vì đã trở thành một phần của ngôi nhà này. Nhìn sự chuyển động của thế giới và sự chuyển động của mình, Như luôn thấy ngạc nhiên vì mình đã dừng lại tại đây, khác với chuyên môn mình có và cố gắng vì những gì mình cùng WTM HCMC mong muốn.\n\nNhân dịp WTM HCMC 1 tuổi, Như thương chúc nhà mình sẽ luôn vững vàng, và có thêm những dự án chất lượng cho cộng đồng công nghệ. Và mong rằng nhà mình sẽ luôn giữ nhịp kết nối và sự chân thành mà Như đã luôn tìm được ở nơi đây. \n \nThương mến, Quỳnh Như. \nEvent Operation Executive. "),
    WishNote(from: "Ngọc Quyên", to: "Gửi chung ạ", content: "Cảm ơn WTM HCMC một phần vui vẻ của em khi em làm việc xa nhà. Chúc hành trình phía của chúng mình thật rực rỡ nhé 🌞🌞🌞🌞"),
    WishNote(from: "General Lead", to: "Igniters", content: "Mọi người đọc postcard tạm nha <3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/image/congrats.gif", width: 80,),
                SizedBox(width: 50,),
                Center(child: Text("Wishes Wall", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),)),
                SizedBox(width: 50,),
                Image.asset("assets/image/congrats.gif", width: 80,),
              ],
            ),
            SizedBox(height: 50,),
            WishCell(note: WishNote(from: "Ngọc - General Lead", to: "My TEAM - My FRIENDS", content: "Thân gửi Igniters,\nThân gửi Iginite Collaborators, \nThân gữi những người bạn, những người đồng hành cùng Women Techmakers HCMC trong suốt một năm qua! \n\nChặng đường 1 năm tuy không phải là 1 chặng đường dài, nhưng chắc chắn, đây cũng không phải là một chặng đường ngắn. Trong những viễn cảnh đẹp nhất mà Ngọc từng nghĩ đến, chưa bao giờ Ngọc nghĩ mình có thể trở thành người thành lập và dẫn dắt một cộng đồng, một đội ngũ cùng nhau tạo ra những giá trị tuyệt vời cho cộng đồng. Ấy vậy mà chớp mắt đã một năm từ ngày Ngọc cùng những người bạn đặt những viên đá đầu tiên hình thành nên Women Techmakers HCMC. Hành trình này đã cho Ngọc rất nhiều bài học quý giá, cho Ngọc chứng kiến sự phát triển và trưởng thành hơn của tất cả những thành viên đã đến với team, và hơn hết, hành trình này mang đến cho Ngọc những người bạn rất tuyệt vời. \n\nNgọc cảm thấy rất may mắn khi được dẫn dắt một tập thể chia sẻ cùng đam mê, và Ngọc hy vọng, tất cả chúng ta sẽ luôn giữ vững được ngọn lửa nhiệt huyết ấy trong những năm tiếp theo đồng hành cùng Women Techmakers HCMC. \n\nCòn nhớ khi trao đổi với các bạn trong  buổi Welcome Interview của từng người, Ngọc luôn nhấn mạnh: “Women Techmakers HCMC có thể không cho các bạn được một số thứ mà các team khác có, nhưng chắc chắn một điều, team sẽ đem lại cho các bạn niềm vui!”. \n\nIt’s all about fun! \nMay the flame of our shared passion guide us throughout this journey!")),
            SizedBox(height: 50,),
            WaterfallFlow.builder(
                itemCount: _list.length,
                //cacheExtent: 0.0,
                padding: EdgeInsets.all(5.0),
                shrinkWrap: true,
                gridDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 40.0,
                  mainAxisSpacing: 20.0,),
              itemBuilder: (BuildContext context, int index) {
                  return WishCell(note: _list[index]);
            },),
          ],
        ),
      ),
      // child: GridView.count(
      //   primary: false,
      //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      //   shrinkWrap: true,
      //   // childAspectRatio: 1/1.8,
      //   crossAxisSpacing: 30,
      //   mainAxisSpacing: 25,
      //   crossAxisCount: 3,
      //   children: List.generate(_list.length, (index) {
      //     return  WishCell(note: _list[index]);
      //   }),
      // ),
    );
  }
}
