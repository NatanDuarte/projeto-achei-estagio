const workloadInput = document.querySelector('.workload');

const weekDaysInput = document.querySelector('.weekDays');

const entryHourInput = document.querySelector('.entry-hour');
const quitHourInput = document.querySelector('.quit-hour');

const nonRegularHoursCheck = document.querySelector('.non-regular-hours');
const variousDaysCheck = document.querySelector('.various-days');

const btnSubmit = document.querySelector('.btn-submit');

const getHourNumber = timeStringSelector => {
    const datetime = timeStringSelector.value;
    const hourNumber = Number(datetime.split(':')[0]);

    return hourNumber;
};

const calculateWeeklyWorkload = () => {
    const weekDays = [...weekDaysInput.options].filter(option => 
        option.selected).map(option => option.value);
    const daysOfWork = weekDays.length;

    const entryHours = getHourNumber(entryHourInput);
    const quitHours = getHourNumber(quitHourInput);
    const workHoursPerDay = (
        quitHours > entryHours ? quitHours - entryHours : 0
    );

    const workload = workHoursPerDay * daysOfWork;

    const MAX_WORKLOAD = 30;

    if (nonRegularHoursCheck.checked || variousDaysCheck.checked) {
        workloadInput.value = `${MAX_WORKLOAD} horas`;
        return;
    }

    btnSubmit.disabled = workload > MAX_WORKLOAD ? true : false;
    workloadInput.value = `${workload} horas`;
};


entryHourInput.addEventListener('change', calculateWeeklyWorkload);
quitHourInput.addEventListener('change', calculateWeeklyWorkload);
weekDaysInput.addEventListener('change', calculateWeeklyWorkload);

nonRegularHoursCheck.addEventListener('change', () => {
    entryHourInput.disabled = nonRegularHoursCheck.checked ? true : false;
    quitHourInput.disabled = nonRegularHoursCheck.checked ? true : false;
    calculateWeeklyWorkload();
});

variousDaysCheck.addEventListener('change', () => {
    weekDaysInput.disabled = variousDaysCheck.checked ? true : false;
    calculateWeeklyWorkload();
});
