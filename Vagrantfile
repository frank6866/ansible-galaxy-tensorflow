VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.ssh.insert_key = false

    config.vm.define "vagrant1" do |vagrant1|
        vagrant1.vm.box = "bento/centos-7.1"
    end

    config.vm.define "vagrant2" do |vagrant2|
        vagrant2.vm.box = "bento/ubuntu-16.10"

        config.vm.provision "ansible" do |ansible|
            ansible.limit = "all"
            ansible.verbose = "v" # "vvvv"
            ansible.playbook = "tests/test_vagrant.yml"
        end
    end
end
