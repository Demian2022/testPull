//
//  LoginView.swift
//  Navigation
//
//  Created by Mac ыыы on 28.02.2023.
//

// ПРИМЕР ИЗ ЛЕКЦИИ  UIScrollView


import UIKit

//class LoginView: UIView {
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        backgroundColor = .white
//        layout()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//
//    }
//
//    let scrollView: UIScrollView = {
//        let scrollView = UIScrollView()
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        return scrollView
//    }()
//
//    let contentView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .white
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//
//    private let nameLabel:UILabel = {
//        let nameLabel = UILabel()
//        nameLabel.translatesAutoresizingMaskIntoConstraints = false
//        nameLabel.text = "logoVK"
//        return nameLabel
//    }()
//
//    private let textLabel: UILabel = {
//        let textLabel = UILabel()
//        textLabel.translatesAutoresizingMaskIntoConstraints = false
//        textLabel.font = .systemFont(ofSize: 24)
//        textLabel.text = "«ВКонта́кте»[2] (международное название — VK) — российская социальная сеть со штаб-квартирой в Санкт-Петербурге. Сайт доступен на 82 языках[1]; особенно популярен среди русскоязычных пользователей. «ВКонтакте» позволяет пользователям отправлять друг другу сообщения, создавать собственные страницы и сообщества, обмениваться изображениями, аудио- и видеозаписями, переводить деньги, играть в браузерные игры. Также позиционирует себя платформой для продвижения бизнеса и решения повседневных задач с помощью мини-приложений[3]. ВКонтакте находится в центре так называемой «экосистемы» ВКонтакте, которую развивает VK. «Экосистема» объединяет проекты: социальную сеть ВКонтакте, VK ID — единый аккаунт для сервисов VK, платёжный сервис VK Pay, подписку VK Combo, платформу VK Mini Apps (мини-приложения Здоровье ВКонтакте, VK Знакомства, Шаги ВКонтакте и прочие), голосовой помощник Маруся и другие[4]. Запущенный 10 октября 2006 года, ресурс изначально позиционировал себя в качестве социальной сети студентов и выпускников российских вузов[5], позднее стал называть себя «современным, быстрым и эстетичным способом общения в сети»[2]. В апреле 2022 ежедневная аудитория платформы в России составила 47,2 млн. Ежемесячная российская аудитория составила 73,4 млн. Каждый день ВКонтакте посещают 52 % российских интернет-пользователей. При этом ежемесячный охват рунета достигает 84 %[6]. Общая месячная аудитория ВКонтакте во всех странах составляет 100 млн пользователей[7]. По данным SimilarWeb от 1 января 2021 года, сайт «ВКонтакте» занимал 15 место по популярности в мире[8]. Штаб-квартира «ВКонтакте» расположена в историческом здании Санкт-Петербурга — Доме компании «Зингер». Пять верхних этажей занимает команда «ВКонтакте», два нижних — знаменитый книжный магазин «Дом книги»[2]. Также офисы компании есть в здании универмага Au Pont Rouge («У Красного Моста») в Санкт-Петербурге[9], в башнях Skylight в Москве и образовательном центре «Сириус» в Сочи. До июня 2017 года представительство ВКонтакте было и в Киеве[10].С февраля 2017 года по март 2021 года главным исполнительным директором (CEO) «ВКонтакте» был Андрей Рогозов[11]. С апреля 2021 года СЕО «ВКонтакте» стала Марина Краснова, которая ранее была директором по продукту ВКонтакте[12].ВКонта́кте»[2] (международное название — VK) — российская социальная сеть со штаб-квартирой в Санкт-Петербурге. Сайт доступен на 82 языках[1]; особенно популярен среди русскоязычных пользователей. «ВКонтакте» позволяет пользователям отправлять друг другу сообщения, создавать собственные страницы и сообщества, обмениваться изображениями, аудио- и видеозаписями, переводить деньги, играть в браузерные игры. Также позиционирует себя платформой для продвижения бизнеса и решения повседневных задач с помощью мини-приложений[3]. ВКонтакте находится в центре так называемой «экосистемы» ВКонтакте, которую развивает VK. «Экосистема» объединяет проекты: социальную сеть ВКонтакте, VK ID — единый аккаунт для сервисов VK, платёжный сервис VK Pay, подписку VK Combo, платформу VK Mini Apps (мини-приложения Здоровье ВКонтакте, VK Знакомства, Шаги ВКонтакте и прочие), голосовой"
//        textLabel.numberOfLines = 0
//        return textLabel
//    }()
//
//    private lazy var textField:UITextField = {
//        let textField = UITextField()
//        textField.borderStyle = .roundedRect
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.placeholder = "Введите текст"
//        textField.delegate = self
//        textField.isSecureTextEntry = true
//        return textField
//    }()
//
//    private let lovoVK: UIImageView = {
//        let lovoVK = UIImageView()
//        lovoVK.translatesAutoresizingMaskIntoConstraints = false
//        lovoVK.image = UIImage(named: "logoVK")
//        lovoVK.contentMode = .scaleAspectFit
//        lovoVK.clipsToBounds = true
//        return lovoVK
//
//    }()
//
//    private let logInButton: UIButton = {
//        let logInButton = UIButton()
//        logInButton.setTitle("нажми", for: .normal)
//        logInButton.translatesAutoresizingMaskIntoConstraints = false
//        logInButton.setTitleColor(.white, for: .normal)
//        logInButton.backgroundColor = .systemBlue
//        return logInButton
//    }()
//
//    private func layout() {
//        addSubview(scrollView)
//        scrollView.addSubview(contentView)
//        contentView.addSubview(nameLabel)
//        contentView.addSubview(textLabel)
//        contentView.addSubview(lovoVK)
//        contentView.addSubview(textField)
//        contentView.addSubview(logInButton)
//
//        NSLayoutConstraint.activate([
//            scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
//            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
//
//
//            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
//            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
//            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
//            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
//            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
//
//            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
//            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
//
//
//            lovoVK.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
//            lovoVK.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            lovoVK.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
//            lovoVK.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 32),
//
//
//            textLabel.topAnchor.constraint(equalTo: lovoVK.bottomAnchor, constant: 20),
//            textLabel.leadingAnchor.constraint(equalTo: lovoVK.leadingAnchor),
//            textLabel.trailingAnchor.constraint(equalTo: lovoVK.trailingAnchor),
////            textLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20), // если включаем то не отоброжается внизу textField
//
//            textField.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 20),
//            textField.leadingAnchor.constraint(equalTo: textLabel.leadingAnchor),
//            textField.trailingAnchor.constraint(equalTo: textLabel.trailingAnchor),
////            textField.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20), походу что последнее добавляем то и приклепляем
//
//
//            logInButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20),
//            logInButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            logInButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
//            logInButton.heightAnchor.constraint(equalToConstant: 50),
//            logInButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
//
//        ])
//
//    }
    
//}

//extension LoginView: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        endEditing(true)
//        return true
//    }
//}
