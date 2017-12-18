<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrustAndSaftey.aspx.cs" Inherits="Careers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Trust And Saftey
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" Runat="Server">
    <br />
    <h1 style="font-family:'Baskerville Old Face'; font-weight:bold; text-align:center; font-size:65px;">Trust & Saftey</h1>
    <h5 style="text-align:center;">Count on peace of mind while navigating and working in our global online workplace.</h5>
    <br />
    <ul class="nav nav-tabs">
        <li class="active">
            <a data-toggle="tab" href="#careers" style="color:black;">Careers</a>
        </li>
        <li>
            <a data-toggle="tab" href="#freelancers" style="color:black;">Freelancers</a>
        </li>
        <li>
            <a data-toggle="tab" href="#security" style="color:black;">Security</a>
        </li>
    </ul>
    <div class="tab-content">
        <div id="careers" class="tab-pane fade in active">
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Hiring right</h2>
                        <h3 style="font-weight:bold;">Reputation matters</h3>
                        <p>Job Success scores, the Top Rated program, and detailed profile information make it
                            easy to find freelancers with stellar work histories.</p>
                        <h3 style="font-weight:bold;">Chat with your team</h3>
                        <p>Upwork Messages lets you have real-time conversations before and after you hire.
                            Keep communication open and expectations clear to enable a safe and successful workplace.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Hiring Right.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Keeping Your Work Safe.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Keeping your work safe</h2>
                        <h3 style="font-weight:bold;">FIXED-PRICE PROTECTION</h3>
                        <p>Escrow lets you double-check finished work once milestones are met – before you release pre-funded payments to your freelancer.</p>
                        <h3 style="font-weight:bold;">HOURLY PAYMENT PROTECTION</h3>
                        <p>Work Diary helps ensure that an hour paid is an hour worked – giving you an easy-to-access billable time system with work details and in-progress screenshots.</p>
                    </asp:TableCell>          
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Support and assistance</h2>
                        <h3 style="font-weight:bold;">24/7 HELP</h3>
                        <p>Get help from our customer support team anytime, from anywhere. They’re living, breathing humans, here to help you solve Upwork-related issues.</p>
                        <h3 style="font-weight:bold;">DISPUTE ASSISTANCE</h3>
                        <p>Disputes rarely happen. But in the event they do occur, Upwork helps with dispute resolution.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Support And Assistance.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="freelancers" class="tab-pane fade">
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Getting hired</h2>
                        <h3 style="font-weight:bold;">REPUTATION MATTERS</h3>
                        <p>Your success revolves around doing great work for great clients. Start by double-checking client trustworthiness through detailed profiles. Leverage our marketplace feedback system to browse comments from freelancers who’ve previously worked with the client.</p>
                        <h3 style="font-weight:bold;">CHAT WITH YOUR CLIENT</h3>
                        <p>Upwork Messages lets you have conversations in real time before and after you’re hired. Keep communication open and expectations clear to enable a safe and successful workplace.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Hiring Right.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Keeping Your Work Safe.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Working safely</h2>
                        <h3 style="font-weight:bold;">FIXED-PRICE PROTECTION</h3>
                        <p>Projects funded with escrow ensure that your work is funded before you even begin working on your client’s milestones.</p>
                        <h3 style="font-weight:bold;">HOURLY PAYMENT PROTECTION</h3>
                        <p>Make sure an hour worked is an hour paid. As outlined in Upwork’s hourly escrow instructions, our Work Diary ensures that freelancers logging hourly time using the Upwork Team App are paid for hours worked.</p>
                        <h3 style="font-weight:bold;">PRIVACY ON YOUR TERMS</h3>
                        <p>You decide whether your profile and work are public or private. You can also change your privacy at any time in your profile settings. Read our privacy policy <a href="PrivacyPolicy.aspx">here</a>.</p>
                    </asp:TableCell>               
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Support and assistance</h2>
                        <h3 style="font-weight:bold;">24/7 HELP</h3>
                        <p>Get help from our customer support team anytime, from anywhere. They’re living, breathing humans, here to help you solve Upwork-related issues.</p>
                        <h3 style="font-weight:bold;">DISPUTE ASSISTANCE</h3>
                        <p>Disputes rarely happen. But in the event they do occur, Upwork helps with dispute resolution.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Support And Assistance.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="security" class="tab-pane fade">
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Staying safe and secure online</h2>
                        <h3 style="font-weight:bold;">TIPS TO PROTECT YOURSELF AND YOUR INFORMATION</h3>
                        <p>At Upwork, we take great measures to help ensure a safe and thriving online workplace. This includes security models that flag suspicious activity, tools that scan site content, and entire teams dedicated to freelancer and client success. But keeping our community safe takes teamwork. Here are some general tips and resources for best protecting yourself and your information online </p>
                        <p>– whether on Upwork or elsewhere.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Staying Safe and Secure Online.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Keeping Your Work Safe.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Keeping your computer safe</h2>
                        <p>It’s important to keep your computer secure, both inside and out. Consider the following:</p>
                        <ul>
                            <li>Lock, log off, or turn off your computer when not in use</li>
                            <li>Schedule recurring computer scans using antivirus software</li>
                            <li>Keep your antivirus software, browsers, plug-ins, applications, and operating systems up-to-date (or set them to update automatically)</li>
                        </ul>
                    </asp:TableCell>                    
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Safeguarding your private information</h2>
                        <p>Treat your personal information like you would your wallet. Here are some tips:</p>
                        <ul>
                            <li>Choose strong, unique passwords (mix letters, symbols, and numbers) and change them often</li>
                            <li>Don’t click unknown links, or enter your credentials on unfamiliar sites</li>
                            <li>Don’t leave your computer unattended, and always log off if using a public computer</li>
                        </ul>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Hiring Right.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Recognizing and avoiding phishing.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Recognizing and avoiding phishing</h2>
                        <p>Phishing is when unscrupulous users try to steal your financial information by impersonating a person or a business. A phishing attempt may:</p>
                        <ul>
                            <li><strong>Invoke a sense of urgency</strong>to encourage you to act before you think</li>
                            <li><strong>Come from a familiar sender</strong>for believability</li>
                            <li><strong>Contain suspicious URLs or attachments</strong>often with shortened links</li>
                            <li><strong>Include legitimate images</strong>like logos</li>
                        </ul>
                        <p>Educating yourself and trusting your instincts are key to protecting yourself:</p>
                        <ul>
                            <li>Avoid sharing personal information when it is requested through email</li>
                            <li>Ensure that the message content makes sense, and confirm with the actual business when in doubt</li>
                            <li>Type URLs directly into your browser to prevent yourself from being routed to fake login pages</li>
                        </ul>
                        <p>To report phishing attempts on Upwork, please <a href="ContactUs.aspx">contact us</a>.</p>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Protecting yourself from malware</h2>
                        <p>Malware includes computer viruses, spyware, and other intrusive software installed on your computer without your consent. To avoid malware:</p>
                        <ul>
                            <li>Scan downloaded attachments for malware before opening them</li>
                            <li>Trust your browser’s security warnings for potentially malicious files</li>
                        </ul>
                        <p>If you notice your computer slowing down, serving pop-ups or ads, or any unexpected changes in your browser, have your computer scanned by an antivirus program.</p>
                        <br />
                        <p>To report possible malware on Upwork, please <a href="ContactUs.aspx">contact us</a>.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Protecting yourself from malware.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Reporting a concern.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Reporting a concern</h2>
                        <h3 style="font-weight:bold;">FLAGGING A SUSPICIOUS CLIENT OR FREELANCER</h3>
                        <p>To report a user, contact Customer Support. Or click “Report Message” within Upwork Messages to flag a specific message. To report a job or a user profile, please use the “Flag as inappropriate” link on the page. For more detailed instructions, refer to our help article here.</p>
                        <h3 style="font-weight:bold;">REPORTING A SUSPECTED VULNERABILITY</h3>
                        <p>If you believe you’ve discovered a potential security vulnerability on Upwork, please email us as soon as possible while following the Guidelines for Responsible Disclosure.</p>
                    </asp:TableCell>                    
                </asp:TableRow>
            </asp:Table>
        </div>
    </div>  
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <h1 style="font-family:'Baskerville Old Face'; font-weight:bold; text-align:center; font-size:65px;">Trust & Saftey</h1>
    <h5 style="text-align:center;">Count on peace of mind while navigating and working in our global online workplace.</h5>
    <br />
    <ul class="nav nav-tabs">
        <li class="active">
            <a data-toggle="tab" href="#careers" style="color:black;">Careers</a>
        </li>
        <li>
            <a data-toggle="tab" href="#freelancers" style="color:black;">Freelancers</a>
        </li>
        <li>
            <a data-toggle="tab" href="#security" style="color:black;">Security</a>
        </li>
    </ul>
    <div class="tab-content">
        <div id="careers" class="tab-pane fade in active">
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Hiring right</h2>
                        <h3 style="font-weight:bold;">Reputation matters</h3>
                        <p>Job Success scores, the Top Rated program, and detailed profile information make it
                            easy to find freelancers with stellar work histories.</p>
                        <h3 style="font-weight:bold;">Chat with your team</h3>
                        <p>Upwork Messages lets you have real-time conversations before and after you hire.
                            Keep communication open and expectations clear to enable a safe and successful workplace.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Hiring Right.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Keeping Your Work Safe.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Keeping your work safe</h2>
                        <h3 style="font-weight:bold;">FIXED-PRICE PROTECTION</h3>
                        <p>Escrow lets you double-check finished work once milestones are met – before you release pre-funded payments to your freelancer.</p>
                        <h3 style="font-weight:bold;">HOURLY PAYMENT PROTECTION</h3>
                        <p>Work Diary helps ensure that an hour paid is an hour worked – giving you an easy-to-access billable time system with work details and in-progress screenshots.</p>
                    </asp:TableCell>          
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Support and assistance</h2>
                        <h3 style="font-weight:bold;">24/7 HELP</h3>
                        <p>Get help from our customer support team anytime, from anywhere. They’re living, breathing humans, here to help you solve Upwork-related issues.</p>
                        <h3 style="font-weight:bold;">DISPUTE ASSISTANCE</h3>
                        <p>Disputes rarely happen. But in the event they do occur, Upwork helps with dispute resolution.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Support And Assistance.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="freelancers" class="tab-pane fade">
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Getting hired</h2>
                        <h3 style="font-weight:bold;">REPUTATION MATTERS</h3>
                        <p>Your success revolves around doing great work for great clients. Start by double-checking client trustworthiness through detailed profiles. Leverage our marketplace feedback system to browse comments from freelancers who’ve previously worked with the client.</p>
                        <h3 style="font-weight:bold;">CHAT WITH YOUR CLIENT</h3>
                        <p>Upwork Messages lets you have conversations in real time before and after you’re hired. Keep communication open and expectations clear to enable a safe and successful workplace.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Hiring Right.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Keeping Your Work Safe.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Working safely</h2>
                        <h3 style="font-weight:bold;">FIXED-PRICE PROTECTION</h3>
                        <p>Projects funded with escrow ensure that your work is funded before you even begin working on your client’s milestones.</p>
                        <h3 style="font-weight:bold;">HOURLY PAYMENT PROTECTION</h3>
                        <p>Make sure an hour worked is an hour paid. As outlined in Upwork’s hourly escrow instructions, our Work Diary ensures that freelancers logging hourly time using the Upwork Team App are paid for hours worked.</p>
                        <h3 style="font-weight:bold;">PRIVACY ON YOUR TERMS</h3>
                        <p>You decide whether your profile and work are public or private. You can also change your privacy at any time in your profile settings. Read our privacy policy <a href="PrivacyPolicy.aspx">here</a>.</p>
                    </asp:TableCell>               
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Support and assistance</h2>
                        <h3 style="font-weight:bold;">24/7 HELP</h3>
                        <p>Get help from our customer support team anytime, from anywhere. They’re living, breathing humans, here to help you solve Upwork-related issues.</p>
                        <h3 style="font-weight:bold;">DISPUTE ASSISTANCE</h3>
                        <p>Disputes rarely happen. But in the event they do occur, Upwork helps with dispute resolution.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Support And Assistance.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="security" class="tab-pane fade">
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Staying safe and secure online</h2>
                        <h3 style="font-weight:bold;">TIPS TO PROTECT YOURSELF AND YOUR INFORMATION</h3>
                        <p>At Upwork, we take great measures to help ensure a safe and thriving online workplace. This includes security models that flag suspicious activity, tools that scan site content, and entire teams dedicated to freelancer and client success. But keeping our community safe takes teamwork. Here are some general tips and resources for best protecting yourself and your information online </p>
                        <p>– whether on Upwork or elsewhere.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Staying Safe and Secure Online.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Keeping Your Work Safe.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Keeping your computer safe</h2>
                        <p>It’s important to keep your computer secure, both inside and out. Consider the following:</p>
                        <ul>
                            <li>Lock, log off, or turn off your computer when not in use</li>
                            <li>Schedule recurring computer scans using antivirus software</li>
                            <li>Keep your antivirus software, browsers, plug-ins, applications, and operating systems up-to-date (or set them to update automatically)</li>
                        </ul>
                    </asp:TableCell>                    
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Safeguarding your private information</h2>
                        <p>Treat your personal information like you would your wallet. Here are some tips:</p>
                        <ul>
                            <li>Choose strong, unique passwords (mix letters, symbols, and numbers) and change them often</li>
                            <li>Don’t click unknown links, or enter your credentials on unfamiliar sites</li>
                            <li>Don’t leave your computer unattended, and always log off if using a public computer</li>
                        </ul>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Hiring Right.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Recognizing and avoiding phishing.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Recognizing and avoiding phishing</h2>
                        <p>Phishing is when unscrupulous users try to steal your financial information by impersonating a person or a business. A phishing attempt may:</p>
                        <ul>
                            <li><strong>Invoke a sense of urgency</strong>to encourage you to act before you think</li>
                            <li><strong>Come from a familiar sender</strong>for believability</li>
                            <li><strong>Contain suspicious URLs or attachments</strong>often with shortened links</li>
                            <li><strong>Include legitimate images</strong>like logos</li>
                        </ul>
                        <p>Educating yourself and trusting your instincts are key to protecting yourself:</p>
                        <ul>
                            <li>Avoid sharing personal information when it is requested through email</li>
                            <li>Ensure that the message content makes sense, and confirm with the actual business when in doubt</li>
                            <li>Type URLs directly into your browser to prevent yourself from being routed to fake login pages</li>
                        </ul>
                        <p>To report phishing attempts on Upwork, please <a href="ContactUs.aspx">contact us</a>.</p>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Protecting yourself from malware</h2>
                        <p>Malware includes computer viruses, spyware, and other intrusive software installed on your computer without your consent. To avoid malware:</p>
                        <ul>
                            <li>Scan downloaded attachments for malware before opening them</li>
                            <li>Trust your browser’s security warnings for potentially malicious files</li>
                        </ul>
                        <p>If you notice your computer slowing down, serving pop-ups or ads, or any unexpected changes in your browser, have your computer scanned by an antivirus program.</p>
                        <br />
                        <p>To report possible malware on Upwork, please <a href="ContactUs.aspx">contact us</a>.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Protecting yourself from malware.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Reporting a concern.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Reporting a concern</h2>
                        <h3 style="font-weight:bold;">FLAGGING A SUSPICIOUS CLIENT OR FREELANCER</h3>
                        <p>To report a user, contact Customer Support. Or click “Report Message” within Upwork Messages to flag a specific message. To report a job or a user profile, please use the “Flag as inappropriate” link on the page. For more detailed instructions, refer to our help article here.</p>
                        <h3 style="font-weight:bold;">REPORTING A SUSPECTED VULNERABILITY</h3>
                        <p>If you believe you’ve discovered a potential security vulnerability on Upwork, please email us as soon as possible while following the Guidelines for Responsible Disclosure.</p>
                    </asp:TableCell>                    
                </asp:TableRow>
            </asp:Table>
        </div>
    </div>  
    <br />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <h1 style="font-family:'Baskerville Old Face'; font-weight:bold; text-align:center; font-size:65px;">Trust & Saftey</h1>
    <h5 style="text-align:center;">Count on peace of mind while navigating and working in our global online workplace.</h5>
    <br />
    <ul class="nav nav-tabs">
        <li class="active">
            <a data-toggle="tab" href="#careers" style="color:black;">Careers</a>
        </li>
        <li>
            <a data-toggle="tab" href="#freelancers" style="color:black;">Freelancers</a>
        </li>
        <li>
            <a data-toggle="tab" href="#security" style="color:black;">Security</a>
        </li>
    </ul>
    <div class="tab-content">
        <div id="careers" class="tab-pane fade in active">
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Hiring right</h2>
                        <h3 style="font-weight:bold;">Reputation matters</h3>
                        <p>Job Success scores, the Top Rated program, and detailed profile information make it
                            easy to find freelancers with stellar work histories.</p>
                        <h3 style="font-weight:bold;">Chat with your team</h3>
                        <p>Upwork Messages lets you have real-time conversations before and after you hire.
                            Keep communication open and expectations clear to enable a safe and successful workplace.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Hiring Right.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Keeping Your Work Safe.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Keeping your work safe</h2>
                        <h3 style="font-weight:bold;">FIXED-PRICE PROTECTION</h3>
                        <p>Escrow lets you double-check finished work once milestones are met – before you release pre-funded payments to your freelancer.</p>
                        <h3 style="font-weight:bold;">HOURLY PAYMENT PROTECTION</h3>
                        <p>Work Diary helps ensure that an hour paid is an hour worked – giving you an easy-to-access billable time system with work details and in-progress screenshots.</p>
                    </asp:TableCell>          
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Support and assistance</h2>
                        <h3 style="font-weight:bold;">24/7 HELP</h3>
                        <p>Get help from our customer support team anytime, from anywhere. They’re living, breathing humans, here to help you solve Upwork-related issues.</p>
                        <h3 style="font-weight:bold;">DISPUTE ASSISTANCE</h3>
                        <p>Disputes rarely happen. But in the event they do occur, Upwork helps with dispute resolution.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Support And Assistance.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="freelancers" class="tab-pane fade">
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Getting hired</h2>
                        <h3 style="font-weight:bold;">REPUTATION MATTERS</h3>
                        <p>Your success revolves around doing great work for great clients. Start by double-checking client trustworthiness through detailed profiles. Leverage our marketplace feedback system to browse comments from freelancers who’ve previously worked with the client.</p>
                        <h3 style="font-weight:bold;">CHAT WITH YOUR CLIENT</h3>
                        <p>Upwork Messages lets you have conversations in real time before and after you’re hired. Keep communication open and expectations clear to enable a safe and successful workplace.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Hiring Right.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Keeping Your Work Safe.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Working safely</h2>
                        <h3 style="font-weight:bold;">FIXED-PRICE PROTECTION</h3>
                        <p>Projects funded with escrow ensure that your work is funded before you even begin working on your client’s milestones.</p>
                        <h3 style="font-weight:bold;">HOURLY PAYMENT PROTECTION</h3>
                        <p>Make sure an hour worked is an hour paid. As outlined in Upwork’s hourly escrow instructions, our Work Diary ensures that freelancers logging hourly time using the Upwork Team App are paid for hours worked.</p>
                        <h3 style="font-weight:bold;">PRIVACY ON YOUR TERMS</h3>
                        <p>You decide whether your profile and work are public or private. You can also change your privacy at any time in your profile settings. Read our privacy policy <a href="PrivacyPolicy.aspx">here</a>.</p>
                    </asp:TableCell>               
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Support and assistance</h2>
                        <h3 style="font-weight:bold;">24/7 HELP</h3>
                        <p>Get help from our customer support team anytime, from anywhere. They’re living, breathing humans, here to help you solve Upwork-related issues.</p>
                        <h3 style="font-weight:bold;">DISPUTE ASSISTANCE</h3>
                        <p>Disputes rarely happen. But in the event they do occur, Upwork helps with dispute resolution.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Support And Assistance.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="security" class="tab-pane fade">
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Staying safe and secure online</h2>
                        <h3 style="font-weight:bold;">TIPS TO PROTECT YOURSELF AND YOUR INFORMATION</h3>
                        <p>At Upwork, we take great measures to help ensure a safe and thriving online workplace. This includes security models that flag suspicious activity, tools that scan site content, and entire teams dedicated to freelancer and client success. But keeping our community safe takes teamwork. Here are some general tips and resources for best protecting yourself and your information online </p>
                        <p>– whether on Upwork or elsewhere.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Staying Safe and Secure Online.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Keeping Your Work Safe.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Keeping your computer safe</h2>
                        <p>It’s important to keep your computer secure, both inside and out. Consider the following:</p>
                        <ul>
                            <li>Lock, log off, or turn off your computer when not in use</li>
                            <li>Schedule recurring computer scans using antivirus software</li>
                            <li>Keep your antivirus software, browsers, plug-ins, applications, and operating systems up-to-date (or set them to update automatically)</li>
                        </ul>
                    </asp:TableCell>                    
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Safeguarding your private information</h2>
                        <p>Treat your personal information like you would your wallet. Here are some tips:</p>
                        <ul>
                            <li>Choose strong, unique passwords (mix letters, symbols, and numbers) and change them often</li>
                            <li>Don’t click unknown links, or enter your credentials on unfamiliar sites</li>
                            <li>Don’t leave your computer unattended, and always log off if using a public computer</li>
                        </ul>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Hiring Right.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Recognizing and avoiding phishing.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Recognizing and avoiding phishing</h2>
                        <p>Phishing is when unscrupulous users try to steal your financial information by impersonating a person or a business. A phishing attempt may:</p>
                        <ul>
                            <li><strong>Invoke a sense of urgency</strong>to encourage you to act before you think</li>
                            <li><strong>Come from a familiar sender</strong>for believability</li>
                            <li><strong>Contain suspicious URLs or attachments</strong>often with shortened links</li>
                            <li><strong>Include legitimate images</strong>like logos</li>
                        </ul>
                        <p>Educating yourself and trusting your instincts are key to protecting yourself:</p>
                        <ul>
                            <li>Avoid sharing personal information when it is requested through email</li>
                            <li>Ensure that the message content makes sense, and confirm with the actual business when in doubt</li>
                            <li>Type URLs directly into your browser to prevent yourself from being routed to fake login pages</li>
                        </ul>
                        <p>To report phishing attempts on Upwork, please <a href="ContactUs.aspx">contact us</a>.</p>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Protecting yourself from malware</h2>
                        <p>Malware includes computer viruses, spyware, and other intrusive software installed on your computer without your consent. To avoid malware:</p>
                        <ul>
                            <li>Scan downloaded attachments for malware before opening them</li>
                            <li>Trust your browser’s security warnings for potentially malicious files</li>
                        </ul>
                        <p>If you notice your computer slowing down, serving pop-ups or ads, or any unexpected changes in your browser, have your computer scanned by an antivirus program.</p>
                        <br />
                        <p>To report possible malware on Upwork, please <a href="ContactUs.aspx">contact us</a>.</p>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Protecting yourself from malware.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="col-sm-6">
                        <img src="Images/Careers/Reporting a concern.jpg" style="width:500px; height:400px;"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="col-sm-6">
                        <h2 style="font-weight:bold; font-size:50px;">Reporting a concern</h2>
                        <h3 style="font-weight:bold;">FLAGGING A SUSPICIOUS CLIENT OR FREELANCER</h3>
                        <p>To report a user, contact Customer Support. Or click “Report Message” within Upwork Messages to flag a specific message. To report a job or a user profile, please use the “Flag as inappropriate” link on the page. For more detailed instructions, refer to our help article here.</p>
                        <h3 style="font-weight:bold;">REPORTING A SUSPECTED VULNERABILITY</h3>
                        <p>If you believe you’ve discovered a potential security vulnerability on Upwork, please email us as soon as possible while following the Guidelines for Responsible Disclosure.</p>
                    </asp:TableCell>                    
                </asp:TableRow>
            </asp:Table>
        </div>
    </div>  
    <br />
</asp:Content>

